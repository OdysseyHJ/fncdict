
import fnclib
import fncData
import hjio
import setting
from hjperf import cTimeBand
import fncDataDict
import temp
import idfrequence


import time
import sys
import threading

MODE_DATA_DICT    = 0
MODE_FNC_ANA      = 1
MODE_REQ_FREQ_ANA = 2
MODE_REQ_FREQ_ID_SEARCH = 3
MODE_DATA_DICT_EXCEL = 4
MODE_FNC_ID_FIND = 5
MODE_HXINI_NAME_CHECK = 6
MODE_HISTORY_DATA_ANA = 7
MODE_HXINI_UPDATE = 8
MODE_FNC_MONITOR = 9





def ModeDataDict():
    timeBand = cTimeBand()
    timeBand.addTimePoint()

    thdFncLoad = threading.Thread(target=fncData.init, args=(setting.initPath,))
    thdFncLoad.start()
    # thdFncLoad = threading.Thread(target=fncData.baseDictInit, args=(setting.initPath,))
    # thdFncLoad.start()
    #
    # thdHexinini = threading.Thread(target=fncData.hexiniConfInit, args=(setting.initPath,))
    # thdHexinini.start()

    fncDataDict.proc()

    # 打印处理时间信息
    return

def ModeFncAna():
    timeBand = cTimeBand()
    timeBand.addTimePoint()

    fncData.init(setting.initPath)
    timeBand.addTimePoint()

    fileList = fnclib.getPathDepth(setting.fncAll, 2)
    # fileListAppend = fnclib.getPathDepth(setting.appendPath)
    timeBand.addTimePoint()
    # fileList += fileListAppend

    # 根据path信息,读取处理数据,处理生产基于host的信息并写文件
    fnclib.genFncStatistciInfo(fileList, setting.statInfoBaseHost)
    timeBand.addTimePoint()

    # 根据genFncStatistciInfo生产的信息，处理生产基于公式的统计信息
    fnclib.genfnccsv(setting.rootpath)
    timeBand.addTimePoint()

    # 生成基于hexin.ini文件字段id的信息
    fnclib.genHexinInfo(setting.rootpath)
    timeBand.addTimePoint()

    fnclib.saveNotExtDict(setting.notExInfo)

    # 打印处理时间信息
    print(timeBand.getTimeBand())

    return

def ModeReqFreqAna():
    timeBand = cTimeBand()
    timeBand.addTimePoint()

    hjio.writelog('PROCESS START')

    fncData.init(setting.initPath)
    timeBand.addTimePoint()

    #id 分析
    pathList = fnclib.getFileDepth(setting.userReqPath, 1)
    idfrequence.userReqFileProc(pathList)
    idfrequence.reqIdfreqOutput(setting.idCountPath)

    # 打印处理时间信息
    print(timeBand.getTimeBand())

    return

def ModeReqFreqIDsearch(searchID = 0):
    timeBand = cTimeBand()
    timeBand.addTimePoint()

    fncData.init(setting.initPath)
    timeBand.addTimePoint()

    # id 分析
    pathList = fnclib.getFileDepth(setting.userReqPath, 1)
    idfrequence.userReqFileProc(pathList)
    res = idfrequence.findDatatype(searchID)
    idfrequence.reqObjOutput(res, setting.idRefAna)

    # 打印处理时间信息
    print(timeBand.getTimeBand())

    return

def ModeDataDictExcel():
    fncData.init(setting.initPath)
    fncData.dataDictTableProc(setting.excelDict)
    return


def ModeFncIDfind():
    fncData.init(setting.initPath)
    idlist = [2977,3124,68517,3121,3119,3120,3138,3141,3139,3140,68519,68518,3126,3127,3130,3134,3131,3135,68521,68520,68508,68509,68510,68511,68512,68513,68514,68515,3128,3129,3132,3136,3133,3137,68522,68523]
    for id in idlist:
        if id in fncData.baseDict.keys():
            print(id)


# 查找hexin.ini中错误的命名
def ModeHxiniNameCheck():
    fncData.init(setting.initPath)
    fobjdict = fncData.baseDict
    hxiniIDdict = fncData.hxID2obj
    hxiniNameDict = fncData.hxName2obj
    namelist = []
    for id in fobjdict.keys():
        for fobj in fobjdict[id]:
            fnamePrefix = fobj.getFilenamePrefix()
            if fnamePrefix in hxiniNameDict.keys() and hxiniNameDict[fnamePrefix].id != fobj.id:

                # if hxiniNameDict[fnamePrefix].id in hxiniIDdict.keys():
                    # del hxiniIDdict[hxiniNameDict[fnamePrefix].id]
                # hxiniIDdict[]
                namelist.append(fnamePrefix)
                # print(fnamePrefix, hxiniNameDict[fnamePrefix].id, fobj.id)
                newname = "{}_{}".format(fnamePrefix,fobj.id)

                # print("{}=0,{},{}".format(fobj.id, newname, newname))
                # print("mv {}.fnc {}.fnc".format(fnamePrefix, newname))
                print(hxiniNameDict[fnamePrefix].id)

    for name in temp.fncloadfail:
        if name not in namelist:
            print(name)
    return

def ModeHistoryDataAna():
    #历史数据处理
    # filelist = historyLib.getFileList(setting.history_data_path)
    # historyLib.history_data_proc(filelist)
    # # historyLib.genCsv(setting.table_path)
    # historyLib.MarketDataInit()
    # print(sorted(historyLib.marketSet))

    #图表绘制
    # graphlib.drawBarAll(setting.graph_bar_path)
    # graphlib.drawPlotAll(setting.graph_plot_path)

    #图表工具
    # hjdraw.init()
    return

def ModeHxiniUpdate():
    fncData.init(setting.initPath)
    fobjdict = fncData.baseDict
    hxiniIDdict = fncData.hxID2obj
    hxiniNameDict = fncData.hxName2obj

    # print(len(hxiniIDdict))
    renameMap = {}
    requestlist = ''
    for id, name in temp.id_name:
        renameMap[id] = name
        if id not in hxiniIDdict.keys():
            newhxunit = fnclib.HexinIniUnit()
            newhxunit.attrSet(id, name, name)
            hxiniIDdict[id] = newhxunit
            requestlist += '"method=quote&codelist=17(600000)&datetime=0(0-0)&datatype={},{}&rettype=3"\n'.format(id,name)
            # print(newhxunit.getStrInfo())
            if name in hxiniNameDict.keys():
                print(id, name, hxiniNameDict[name].id)
    # print(len(hxiniIDdict))
    strAll = ''
    for id in sorted(hxiniIDdict.keys()):
        line = hxiniIDdict[id].getStrInfo()
        strAll += '{}\n'.format(line)

    hjio.wirteText(strAll, './hexin.ini.update')
    hjio.wirteText(requestlist, './requestlist.txt')


    return

def ModeFncMonitor():
    filelib = fnclib.getFileLib(setting.formula_stat_path)
    # print(type(filelib))
    # print(filelib)
    sheetdict = {}

    sheet = []
    path = filelib[0][0]
    for file in filelib[0][2]:
        line = []
        hostname = file.split('.')[0]
        # print(hostname)
        filepath = "{}\\{}".format(path, file)
        content = hjio.readFile(filepath)
        split_list = content.split('\n')
        fnc_count = split_list[0].split('=')[1]
        plugins_md5 = split_list[1].split('=')[1].split(' ')[0]
        version = split_list[2].split('=')[1]
        line = [hostname, fnc_count, plugins_md5, version]
        sheet.append(line)
    sheetdict['升级情况'] = sheet
    hjio.writeExcel(setting.formula_stat_out_path, sheetdict)



calldict = {
    MODE_DATA_DICT : ModeDataDict,
    MODE_FNC_ANA   : ModeFncAna,
    MODE_REQ_FREQ_ANA : ModeReqFreqAna,
    MODE_REQ_FREQ_ID_SEARCH : None,
    MODE_DATA_DICT_EXCEL : ModeDataDictExcel,
    MODE_FNC_ID_FIND : ModeFncIDfind,
    MODE_HXINI_NAME_CHECK : ModeHxiniNameCheck,
    MODE_HISTORY_DATA_ANA : ModeHistoryDataAna,
    MODE_HXINI_UPDATE : ModeHxiniUpdate,
    MODE_FNC_MONITOR : ModeFncMonitor,
}

def main():

    # 日志初始化 必要
    hjio.init(setting.logpath)
    hjio.writelog("PROCESS START")
    # 运行
    runByMode(9)

    # 清空日志缓存，写文件
    hjio.clearbuf('P'
                  'ROCESS END')

    return


def runByMode(modeType = 0):
    callFunction = calldict[modeType]
    if None != callFunction:
        callFunction()
    else:
        errinfo = "wrong mode type:{}".format(modeType)
        print(errinfo)
        hjio.writelog(errinfo)

    return

if __name__ == '__main__':
    main()


