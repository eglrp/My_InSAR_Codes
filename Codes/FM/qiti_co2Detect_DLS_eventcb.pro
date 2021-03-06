;;
;; IDL Event Callback Procedures
;; qiti_co2Detect_DLS_eventcb
;;
;; Generated on:	03/12/2012 14:35.04
;;
;;-----------------------------------------------------------------
;; Notify Realize Callback Procedure.
;; Argument:
;;   wWidget - ID number of specific widget.
;;
;;
;;   Retrieve the IDs of other widgets in the widget hierarchy using
;;       id=widget_info(Event.top, FIND_BY_UNAME=name)
;
;;-----------------------------------------------------------------
;pro OnRealize_DetectMulti_CO2_DLS, wWidget
;	InitTableCO2_DLS, wWidget
;    SetRatioStatus_456, wWidget, 'WID_BUTTON_DefaultSavePath_CO2_DLS', 1
;	SetComponentSensitive_456, wWidget, 'WID_TEXT_SavePath_CO2_DLS', 0
;	SetComponentSensitive_456, wWidget, 'WID_BUTTON_SelectSavePath_CO2_DLS', 0
;	SetCheckBoxStatus_456, wWidget, 'WID_BUTTON_AddResult_CO2_DLS', 1
;end
;;-----------------------------------------------------------------
;; Post Create Widget Procedure.
;; Argument:
;;   wWidget - ID number of specific widget.
;;
;;   Any keywords passed into the generated widget creation procedure
;;       are passed into this procudure.
;
;;   Retrieve the IDs of other widgets in the widget hierarchy using
;;       id=widget_info(Event.top, FIND_BY_UNAME=name)
;
;;-----------------------------------------------------------------
;pro PostCreation_DetectMulti_CO2_DLS, wWidget, _EXTRA=_VWBExtra_
;	extraDatas = _VWBExtra_ & TLBId = extraDatas.TLBId
;	SetTLBPosition_400, wWidget, inCenterOwner = TLBId
;	WIDGET_CONTROL, TLBId, SENSITIVE = 0
;	WIDGET_CONTROL, wWidget, SET_UVALUE = extraDatas
;end
;;-----------------------------------------------------------------
;; Kill Notify Callback Procedure.
;; Argument:
;;   wWidget - ID number of specific widget.
;;
;;
;;   Retrieve the IDs of other widgets in the widget hierarchy using
;;       id=widget_info(Event.top, FIND_BY_UNAME=name)
;
;;-----------------------------------------------------------------
;pro OnDestroy_DetectMulti_CO2_DLS, wWidget
;	WIDGET_CONTROL, wWidget, GET_UVALUE = pUvalue & MainUIID = pUvalue.TLBid
;	WIDGET_CONTROL, MainUIID, SENSITIVE=1
;end
;;-----------------------------------------------------------------
;; Activate Button Callback Procedure.
;; Argument:
;;   Event structure:
;;
;;   {WIDGET_BUTTON, ID:0L, TOP:0L, HANDLER:0L, SELECT:0}
;;
;;   ID is the widget ID of the component generating the event. TOP is
;;       the widget ID of the top level widget containing ID. HANDLER
;;       contains the widget ID of the widget associated with the
;;       handler routine.
;
;;   SELECT is set to 1 if the button was set, and 0 if released.
;;       Normal buttons do not generate events when released, so
;;       SELECT will always be 1. However, toggle buttons (created by
;;       parenting a button to an exclusive or non-exclusive base)
;;       return separate events for the set and release actions.
;
;;   Retrieve the IDs of other widgets in the widget hierarchy using
;;       id=widget_info(Event.top, FIND_BY_UNAME=name)
;
;;-----------------------------------------------------------------
;pro OnButtonPress_OpenFiles_CO2_DLS, Event
;	wDTIF = WIDGET_INFO(Event.top, FIND_BY_UNAME = 'WID_TABLE_InputFiles_CO2_DLS')
;	WIDGET_CONTROL, wDTIF, GET_VALUE = OldFiles
;
;	Selecthe6PathFromDialog_456, otFiles, otPath
;
;	IF StrLen(otFiles[0]) LT 1 THEN RETURN
;    AddQXJArrayToTable_O3Prf_456, Event.top, 'WID_TABLE_InputFiles_CO2_DLS', otFiles
;end
;;-----------------------------------------------------------------
;; Activate Button Callback Procedure.
;; Argument:
;;   Event structure:
;;
;;   {WIDGET_BUTTON, ID:0L, TOP:0L, HANDLER:0L, SELECT:0}
;;
;;   ID is the widget ID of the component generating the event. TOP is
;;       the widget ID of the top level widget containing ID. HANDLER
;;       contains the widget ID of the widget associated with the
;;       handler routine.
;
;;   SELECT is set to 1 if the button was set, and 0 if released.
;;       Normal buttons do not generate events when released, so
;;       SELECT will always be 1. However, toggle buttons (created by
;;       parenting a button to an exclusive or non-exclusive base)
;;       return separate events for the set and release actions.
;
;;   Retrieve the IDs of other widgets in the widget hierarchy using
;;       id=widget_info(Event.top, FIND_BY_UNAME=name)
;
;;-----------------------------------------------------------------
;pro OnButtonPress_RemoveFiles_CO2_DLS, Event
;	RemoveSelectedRowsFromTable_456, Event.Top, 'WID_TABLE_InputFiles_CO2_DLS'
;end
;;-----------------------------------------------------------------
;; Activate Button Callback Procedure.
;; Argument:
;;   Event structure:
;;
;;   {WIDGET_BUTTON, ID:0L, TOP:0L, HANDLER:0L, SELECT:0}
;;
;;   ID is the widget ID of the component generating the event. TOP is
;;       the widget ID of the top level widget containing ID. HANDLER
;;       contains the widget ID of the widget associated with the
;;       handler routine.
;
;;   SELECT is set to 1 if the button was set, and 0 if released.
;;       Normal buttons do not generate events when released, so
;;       SELECT will always be 1. However, toggle buttons (created by
;;       parenting a button to an exclusive or non-exclusive base)
;;       return separate events for the set and release actions.
;
;;   Retrieve the IDs of other widgets in the widget hierarchy using
;;       id=widget_info(Event.top, FIND_BY_UNAME=name)
;
;;-----------------------------------------------------------------
;pro OnButtonPress_DefaultSavePath_CO2_DLS, Event
;	SetComponentSensitive_456, Event.Top, 'WID_TEXT_SavePath_CO2_DLS', 0
;	SetComponentSensitive_456, Event.Top, 'WID_BUTTON_SelectSavePath_CO2_DLS', 0
;end
;;-----------------------------------------------------------------
;; Activate Button Callback Procedure.
;; Argument:
;;   Event structure:
;;
;;   {WIDGET_BUTTON, ID:0L, TOP:0L, HANDLER:0L, SELECT:0}
;;
;;   ID is the widget ID of the component generating the event. TOP is
;;       the widget ID of the top level widget containing ID. HANDLER
;;       contains the widget ID of the widget associated with the
;;       handler routine.
;
;;   SELECT is set to 1 if the button was set, and 0 if released.
;;       Normal buttons do not generate events when released, so
;;       SELECT will always be 1. However, toggle buttons (created by
;;       parenting a button to an exclusive or non-exclusive base)
;;       return separate events for the set and release actions.
;
;;   Retrieve the IDs of other widgets in the widget hierarchy using
;;       id=widget_info(Event.top, FIND_BY_UNAME=name)
;
;;-----------------------------------------------------------------
;pro OnButtonPress_SpecifySavePath_CO2_DLS, Event
;	SetComponentSensitive_456, Event.Top, 'WID_TEXT_SavePath_CO2_DLS', 1
;	SetComponentSensitive_456, Event.Top, 'WID_BUTTON_SelectSavePath_CO2_DLS', 1
;end
;;-----------------------------------------------------------------
;; Activate Button Callback Procedure.
;; Argument:
;;   Event structure:
;;
;;   {WIDGET_BUTTON, ID:0L, TOP:0L, HANDLER:0L, SELECT:0}
;;
;;   ID is the widget ID of the component generating the event. TOP is
;;       the widget ID of the top level widget containing ID. HANDLER
;;       contains the widget ID of the widget associated with the
;;       handler routine.
;
;;   SELECT is set to 1 if the button was set, and 0 if released.
;;       Normal buttons do not generate events when released, so
;;       SELECT will always be 1. However, toggle buttons (created by
;;       parenting a button to an exclusive or non-exclusive base)
;;       return separate events for the set and release actions.
;
;;   Retrieve the IDs of other widgets in the widget hierarchy using
;;       id=widget_info(Event.top, FIND_BY_UNAME=name)
;
;;-----------------------------------------------------------------
;pro OnButtonPress_OK_CO2_DLS, Event
;	idTable = WIDGET_INFO(Event.top, FIND_BY_UNAME = 'WID_TABLE_InputFiles_CO2_DLS') & IF idTable EQ 0 THEN RETURN
;	WIDGET_CONTROL, idTable, Get_UValue = pUVale
;	IF pUVale.RowCount EQ 0 THEN BEGIN
;		rr = Dialog_message('��������ȷ�������ļ�', /ERROR) & RETURN
;	ENDIF
;
;
;    strSysPath = GetSystemPath_401()
;    savePath = strSysPath + 'ResultData\CO2\'
;	GetRatioStatus_456, Event.top, 'WID_BUTTON_SpecifySavePath_CO2_DLS', otStatus
;	IF otStatus EQ 1 THEN BEGIN
;		GetTextCaption_456, Event.top, 'WID_TEXT_SavePath_CO2_DLS', otTextCaption
;		IF StrLen(otTextCaption[0]) LT 2 THEN BEGIN
;			rr = Dialog_message('�����ñ���·��', /ERROR) & RETURN
;		ENDIF ELSE savePath = otTextCaption
;	ENDIF
;
;
;
;	GetArrayFromTable_456, Event.top, 'WID_TABLE_InputFiles_CO2_DLS', otTableArray
;;	RemoveBadRowsFromArray_456, otTableArray, otGoodCount
;;	IF otGoodCount EQ 0 THEN BEGIN
;;		rr = Dialog_message('��ǰ�����ļ�û�п�ִ�е��ļ�', /ERROR) & RETURN
;;	ENDIF
;
;	;������ݴ���
;
;    CO2CalculationMulti, otTableArray[*, 0], inSavePath = savePath, otSaveNames
;
;
;
;
;    GetCheckBoxStatus_456, Event.top, 'WID_BUTTON_AddResult_CO2_DLS', otStatus
;
;
;	IF otStatus EQ 1 THEN BEGIN
;		WIDGET_CONTROL, Event.Top, GET_UVALUE = pUValue & OwnerId = pUValue.TLBid
;		WIDGET_CONTROL, OwnerId, GET_UVALUE = pUValue1 &  OwnerId1 = pUValue1.TLBid
;		WIDGET_CONTROL, OwnerId1, GET_UVALUE = pState & iTLB = (*pState).wBase
;
;	   FOR ii = 0L , N_ELEMENTS(otTableArray) - 1 DO BEGIN
;			OpenFileToSystem_481, iTLB, inFileNames = otSaveNames[ii]
;		ENDFOR
;
;	ENDIF
;
;    success = Dialog_message('CO2��Ʒ�������!', /INFORMATION, TITLE = '��Ʒ���')
;	WIDGET_CONTROL, Event.top, /DESTROY
;end
;;-----------------------------------------------------------------
;; Activate Button Callback Procedure.
;; Argument:
;;   Event structure:
;;
;;   {WIDGET_BUTTON, ID:0L, TOP:0L, HANDLER:0L, SELECT:0}
;;
;;   ID is the widget ID of the component generating the event. TOP is
;;       the widget ID of the top level widget containing ID. HANDLER
;;       contains the widget ID of the widget associated with the
;;       handler routine.
;
;;   SELECT is set to 1 if the button was set, and 0 if released.
;;       Normal buttons do not generate events when released, so
;;       SELECT will always be 1. However, toggle buttons (created by
;;       parenting a button to an exclusive or non-exclusive base)
;;       return separate events for the set and release actions.
;
;;   Retrieve the IDs of other widgets in the widget hierarchy using
;;       id=widget_info(Event.top, FIND_BY_UNAME=name)
;
;;-----------------------------------------------------------------
;pro OnButtonPress_Cancel_CO2_DLS, Event
;	idTLB = WIDGET_INFO(Event.top, FIND_BY_UNAME = 'WID_BASE_Detect_CH4_DLS')
;	WIDGET_CONTROL, idTLB, /DESTROY
;end
;;-----------------------------------------------------------------
;; Activate Button Callback Procedure.
;; Argument:
;;   Event structure:
;;
;;   {WIDGET_BUTTON, ID:0L, TOP:0L, HANDLER:0L, SELECT:0}
;;
;;   ID is the widget ID of the component generating the event. TOP is
;;       the widget ID of the top level widget containing ID. HANDLER
;;       contains the widget ID of the widget associated with the
;;       handler routine.
;
;;   SELECT is set to 1 if the button was set, and 0 if released.
;;       Normal buttons do not generate events when released, so
;;       SELECT will always be 1. However, toggle buttons (created by
;;       parenting a button to an exclusive or non-exclusive base)
;;       return separate events for the set and release actions.
;
;;   Retrieve the IDs of other widgets in the widget hierarchy using
;;       id=widget_info(Event.top, FIND_BY_UNAME=name)
;
;;-----------------------------------------------------------------
;pro OnButtonPress_SelectSavePath_CO2_DLS, Event
; 	SelectDirectoryFromDialog_456, otDirectory, inTitle = 'ѡ��CO2��Ʒ����λ��'
;	IF N_ELEMENTS(otDirectory[0]) EQ 0 THEN RETURN
;	SetTextCaption_456, Event.Top, 'WID_TEXT_SavePath_CO2_DLS', otDirectory[0]
;end
;;
;; Empty stub procedure used for autoloading.
;;
;pro qiti_co2Detect_DLS_eventcb
;end
;
;;----------------------------------------------------------------------
;pro InitTableCO2_DLS, inTopBaseID
;
;	idTable=WIDGET_INFO(inTopBaseID, FIND_BY_UNAME = 'WID_TABLE_InputFiles_CO2_DLS')
;
;	;set table infos
;	GetComponentGeometry_456, inTopBaseID, 'WID_TABLE_InputFiles_CO2_DLS', otGeometry & iSXSize = otGeometry.SCR_XSIZE
;	arrColumnLabels = ['AIRS L2���']
;	arrColumnWidths = [620]
;
;	;;�����ʱ����������⻹��Ҫ�������²���:, /COLUMN_MAJOR
;	WIDGET_CONTROL, idTable, COLUMN_LABELS = arrColumnLabels, COLUMN_WIDTHS = arrColumnWidths
;	ClearTable_456, inTopBaseID, 'WID_TABLE_InputFiles_CO2_DLS'
;end
;
;;------------------------------------------------------------------------------------------------------
;pro CO2CalculationMulti, numFilesa, inSavePath = insavePath, otSaveNames
;    iFileCount = N_ELEMENTS(numFilesa)
;	if iFileCount eq 0 then begin
;		err = dialog_message('AIRS�����ļ�������', /error, title = '����')
;		return
;	endif
;	otSaveNames = strarr(iFileCount)
;	for ii = 0, iFileCount - 1 do begin
;
;		if N_ELEMENTS(inSavePath) eq 0 then begin
;			strSysPath = GetSystemPath_401()
;			inSavePath = strSysPath + 'ResultData\CO2\'
;		endif
;		GetOutputBaseName, numFilesa[ii], inSavePath, '_CO2_DLS.TIF', otOutputName
;
;
;		co2_processing, numFilesa[ii],otOutputName
;		otSaveNames[ii] = otOutputName
;	endfor
;end
;
;;------------------------------------------------------------------------------------------------------------
;Pro co2_processing,filename,tiff_co2out_name
;
;
; compile_opt idl2
; ENVI, /RESTORE_BASE_SAVE_FILES
; ENVI_BATCH_INIT,log_file='batch.log',/NO_STATUS_WINDOW
;
;
;     tmp_pathsplit=STRSPLIT(filename,'\',/EXTRACT)
;     tmp_pathcount=size(tmp_pathsplit)
;     tmp_filename=tmp_pathsplit[tmp_pathcount[1]-1]
;     tmp_pathsplit=STRSPLIT(tmp_filename,'.',/EXTRACT)
;     tmp_pathcount=size(tmp_pathsplit)
;
;   	airsco2name=""
;
;	FOR i=0,tmp_pathcount[1]-3 DO BEGIN
;	  airsco2name=airsco2name+tmp_pathsplit[i]+'.'
;	ENDFOR
;    airsco2name=tmp_pathsplit[1]+'-'+tmp_pathsplit[2]+'-'+tmp_pathsplit[3]+'_'+airsco2name+tmp_pathsplit[tmp_pathcount[1]-2]
;
;     strSysPath = GetSystemPath_401()
;     savePath = strSysPath + 'ResultData\CO2\'
;     inputdir=strSysPath + 'System_Init\Gas\'
;
;;	 inputdir='I:\����\forwzf\'
;
;     ;airsco2name=savePath+airsco2name + '_CO2.dat'
;
;     tiff_co2out_name=savePath+airsco2name+ '_CO2.tif'
;
;
;     fileId = HDF_SD_START(filename, /READ)
;
;      sds_name='Latitude'
;      index = HDF_SD_NAMETOINDEX(fileId, sds_name)
;      sdsid = HDF_SD_SELECT(fileId, index)
;      HDF_SD_GETDATA, sdsid, latdata
;      HDF_SD_ENDACCESS, sdsid
;
;      sds_name='Longitude'
;      index = HDF_SD_NAMETOINDEX(fileId, sds_name)
;      sdsid = HDF_SD_SELECT(fileId, index)
;      HDF_SD_GETDATA, sdsid, londata
;      HDF_SD_ENDACCESS, sdsid
;
;
;	  fileId = HDF_SD_START(filename, /READ)
;      sds_name='Time'
;      index = HDF_SD_NAMETOINDEX(fileId, sds_name)
;      sdsid = HDF_SD_SELECT(fileId, index)
;      HDF_SD_GETDATA, sdsid, timedata
;      HDF_SD_ENDACCESS, sdsid
;
;      sds_name='radiances'
;      index = HDF_SD_NAMETOINDEX(fileId, sds_name)
;      sdsid = HDF_SD_SELECT(fileId, index)
;      HDF_SD_GETDATA, sdsid, Radiances
;      HDF_SD_ENDACCESS, sdsid
;
;      sds_name='Qual_CC_Rad'
;      index = HDF_SD_NAMETOINDEX(fileId, sds_name)
;      sdsid = HDF_SD_SELECT(fileId, index)
;      HDF_SD_GETDATA, sdsid, Qual_CC_Rad
;      HDF_SD_ENDACCESS, sdsid
;
;      sds_name='satzen'
;      index = HDF_SD_NAMETOINDEX(fileId, sds_name)
;      sdsid = HDF_SD_SELECT(fileId, index)
;      HDF_SD_GETDATA, sdsid, airs_satzen
;      HDF_SD_ENDACCESS, sdsid
;
;
;	  sds_name='solzen'
;      index = HDF_SD_NAMETOINDEX(fileId, sds_name)
;      sdsid = HDF_SD_SELECT(fileId, index)
;      HDF_SD_GETDATA, sdsid, airs_solzen
;      HDF_SD_ENDACCESS, sdsid
;
;      HDF_SD_END, fileId
;
;
;	  sz=size(Radiances)
;
;      airs_rad=REFORM(transpose(Radiances,[2,1,0]),sz[2]*sz[3],sz[1])
;
;      satzen=reform(transpose(airs_satzen),sz[2]*sz[3],1)
;
;      solzen=reform(transpose(airs_solzen),sz[2]*sz[3],1)
;
;      QA_cc=reform(transpose(Qual_CC_Rad),sz[2]*sz[3],1);
;
;      nanunique=intarr(489)
;      openr,1,inputdir+'nanunique'
;      readf,1,nanunique
;      close,1
;
;      allrows= replicate(1L,sz[1])
;      allrows[nanunique-1]=0L
;      validrows = where(allrows eq 1)
;      airs_rad=airs_rad(*,validrows);
;
;
;      allPC=fltarr(9,1889)
;      openr,1,inputdir+'allPC'
;      readf,1,allPC
;      close, 1
;
;      PCinnew=transpose(airs_rad)##(allPC)
;
;	   ;%%%%%%%%%%%%%%%%%% CO2 Estimation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;      cx=transpose(PCinnew)
;      Q = size(cx)
;      Q=Q[1]
;      oneQ = lindgen(Q,1)*0+1;
;      ps_xmax=transpose([3275.5767, 867.1077, -180.353, 218.8842, 211.2256, 41.8021, 199.3575, 47.517, 82.5914])
;      ps_xmin=transpose([790.9301, 393.0724, -554.6502, -150.8734, -47.2027, -133.7651, 93.5841, -33.2763, -29.6561])
;      ps_ymax=1L
;      ps_ymin=-1L
;      rangex = ps_xmax-ps_xmin
;      valrange_ind=where(rangex eq 0,valrange_ind_cnt)
;      if (valrange_ind ne -1) then rangex(where(rangex eq 0)) = 1
;      rangey = ps_ymax-ps_ymin
;      PCco2transnew = rangey*(cx-ps_xmin[oneQ,*])/rangex[oneQ,*] + ps_ymin
;
;      cx=transpose(satzen)
;      Q = size(cx)
;      Q=Q[1]
;      oneQ = lindgen(1,Q)*0+1;
;      ps_xmax=51.441
;      ps_xmin=1.7601
;      ps_ymax=1L
;      ps_ymin=-1L
;      rangex = ps_xmax-ps_xmin
;      valrange_ind=where(rangex eq 0,valrange_ind_cnt)
;      if (valrange_ind ne -1) then rangex(where(rangex eq 0)) = 1
;      rangey = ps_ymax-ps_ymin
;      Pco2satzentransnew = rangey*(cx-ps_xmin)/rangex + ps_ymin
;
;      cx=transpose(solzen)
;      Q = size(cx)
;      Q=Q[1]
;      oneQ = lindgen(1,Q)*0+1;
;      ps_xmax=165.28
;      ps_xmin=11.324
;      ps_ymax=1L
;      ps_ymin=-1L
;      rangex = ps_xmax-ps_xmin
;      valrange_ind=where(rangex eq 0,valrange_ind_cnt)
;      if (valrange_ind ne -1) then rangex(where(rangex eq 0)) = 1
;      rangey = ps_ymax-ps_ymin
;      Pco2solzentransnew = rangey*(cx-ps_xmin)/rangex + ps_ymin
;
;      x1=PCco2transnew[*,0]
;      x2=PCco2transnew[*,1]
;      x3=PCco2transnew[*,2]
;      x4=PCco2transnew[*,3]
;      x5=PCco2transnew[*,4]
;      x6=PCco2transnew[*,5]
;      x7=PCco2transnew[*,6]
;      x8=PCco2transnew[*,7]
;      x9=PCco2transnew[*,8]
;      x10=transpose(Pco2satzentransnew)
;      x11=transpose(Pco2solzentransnew)
;
;	  val_y =(((2/(1+exp(-2*((2/(1+exp(-2*(x1*(-2.037026e+000) + x2*2.307325e-001 + x3*(-1.049685e-001) + x4*(-7.108978e-001) + x5*1.314674e+000 $
;      + x6*(-1.656470e-002) + x7*(-3.499404e-001) + x8*(-7.373863e-003) + x9*(-1.501734e-001) + x10*(-3.302989e-002) + x11*(-9.501147e-001) $
;      -1.513720e+000)))-1)*(-1.961753e-002) + (2/(1+exp(-2*(x1*2.998261e-001 + x2*9.620630e-001 + x3*7.863338e-002 + x4*9.983103e-001 + $
;      x5*(-1.488616e-001) + x6*(-1.801891e-001) + x7*7.694381e-001 + x8*6.913113e-001 + x9*(-1.182937e-001) + x10*1.125942e-001 $
;      + x11*1.235984e-001 + 2.816774e-001)))-1)*(-2.018040e-002) + (2/(1+exp(-2*(x1*(-2.319732e+000) + x2*(-5.777909e-001) + x3*8.022373e-001 $
;      + x4*7.956962e-001 + x5*(-6.773465e-001) + x6*2.122697e-001 + x7*(-2.300928e-001) + x8*(-2.237993e-001) + x9*(-2.050171e-001) $
;      + x10*(-1.808916e-001) + x11*(-2.724216e-001) + 1.010599e+000)))-1)*(-2.679282e-003) + (2/(1+exp(-2*(x1*5.968258e-001 + x2*(-6.272039e-002)$
;       + x3*7.838866e-001 + x4*3.086514e-001 + x5*1.857262e-001 + x6*(-4.725408e-001) + x7*1.265467e+000 + x8*1.884844e-001 + x9*(-1.082419e+000) $
;       + x10*9.389020e-003 + x11*1.289086e+000 + 1.978971e-001)))-1)*2.342454e-003 + (2/(1+exp(-2*(x1*(-6.787177e-001) + x2*1.361141e+000 $
;       + x3*4.242464e-001 + x4*1.198405e+000 + x5*(-5.632985e-001) + x6*1.061509e+000 + x7*4.075891e-001 + x8*7.144099e-001 + x9*6.250744e-001$
;        + x10*(-2.498975e-001) + x11*1.350367e+000 + 1.150136e-001)))-1)*6.712049e-003 + (2/(1+exp(-2*(x1*4.578407e-001 + x2*(-5.847067e-001) $
;        + x3*(-2.917161e-002) + x4*2.628517e-001 + x5*(-3.792198e-001) + x6*4.973659e-001 + x7*(-5.139485e-001) + x8*1.184277e-002 $
;        + x9*1.015795e+000 + x10*2.645837e-003 + x11*(-1.766867e+000) -1.419026e-001)))-1)*3.720786e-002 + (2/(1+exp(-2*(x1*(-1.352320e+000) $
;        + x2*(-1.648298e-001) + x3*(-2.254672e-001) + x4*1.440311e+000 + x5*8.462713e-001 + x6*1.116300e-001 + x7*(-8.606460e-001) + $
;        x8*(-9.814566e-001) + x9*6.318561e-002 + x10*(-2.193766e-001) + x11*1.632348e-001 -5.647791e-001)))-1)*(-4.745815e-003) $
;        + (2/(1+exp(-2*(x1*1.140968e+000 + x2*1.314574e+000 + x3*(-8.578971e-001) + x4*1.531032e+000 + x5*1.332486e+000 + x6*(-3.567295e-001) $
;        + x7*5.739287e-002 + x8*5.872537e-001 + x9*1.270036e-001 + x10*3.409906e-001 + x11*(-1.766940e-001) -6.353121e-003)))-1)*6.469061e-003 $
;        + (2/(1+exp(-2*(x1*(-5.244430e-001) + x2*(-8.343656e-001) + x3*5.203498e-001 + x4*(-9.925469e-001) + x5*1.304630e+000 + x6*2.809569e-001 $
;        + x7*(-1.689703e-002) + x8*8.216344e-001 + x9*(-2.522851e-001) + x10*(-1.658768e-001) + x11*(-1.961988e+000) -1.776180e-001)))-1)*(-6.875143e-003) $
;        + (2/(1+exp(-2*(x1*3.279616e-001 + x2*(-4.375002e-001) + x3*4.387803e-002 + x4*(-5.501400e-001) + x5*(-8.565877e-001) + x6*4.391854e-002 $
;        + x7*6.908597e-002 + x8*6.846813e-001 + x9*2.778449e-001 + x10*(-5.143424e-001) + x11*(-8.861342e-001) + 6.886770e-001)))-1)*(-2.351248e-002) $
;        + (2/(1+exp(-2*(x1*3.334734e-001 + x2*(-1.996905e+000) + x3*(-6.054301e-001) + x4*4.512284e-001 + x5*(-1.499837e+000) + x6*(-1.759464e-001) $
;        + x7*2.002679e-001 + x8*2.484810e-001 + x9*(-6.863660e-002) + x10*2.007556e-001 + x11*(-1.232336e+000) -7.699519e-001)))-1)*5.620550e-003 $
;        -9.582887e-003)))-1)*(-5.393419e-002) + (2/(1+exp(-2*((2/(1+exp(-2*(x1*(-2.037026e+000) + x2*2.307325e-001 + x3*(-1.049685e-001) $
;        + x4*(-7.108978e-001) + x5*1.314674e+000 + x6*(-1.656470e-002) + x7*(-3.499404e-001) + x8*(-7.373863e-003) + x9*(-1.501734e-001) $
;        + x10*(-3.302989e-002) + x11*(-9.501147e-001) -1.513720e+000)))-1)*(-4.488032e-001) + (2/(1+exp(-2*(x1*2.998261e-001 + x2*9.620630e-001 $
;        + x3*7.863338e-002 + x4*9.983103e-001 + x5*(-1.488616e-001) + x6*(-1.801891e-001) + x7*7.694381e-001 + x8*6.913113e-001 $
;        + x9*(-1.182937e-001) + x10*1.125942e-001 + x11*1.235984e-001 + 2.816774e-001)))-1)*(-1.831683e-001) + (2/(1+exp(-2*(x1*(-2.319732e+000) $
;        + x2*(-5.777909e-001) + x3*8.022373e-001 + x4*7.956962e-001 + x5*(-6.773465e-001) + x6*2.122697e-001 + x7*(-2.300928e-001)$
;         + x8*(-2.237993e-001) + x9*(-2.050171e-001) + x10*(-1.808916e-001) + x11*(-2.724216e-001) + 1.010599e+000)))-1)*(-3.438430e-001) $
;         + (2/(1+exp(-2*(x1*5.968258e-001 + x2*(-6.272039e-002) + x3*7.838866e-001 + x4*3.086514e-001 + x5*1.857262e-001 + x6*(-4.725408e-001) $
;         + x7*1.265467e+000 + x8*1.884844e-001 + x9*(-1.082419e+000) + x10*9.389020e-003 + x11*1.289086e+000 + 1.978971e-001)))-1)*3.176445e-001 $
;         + (2/(1+exp(-2*(x1*(-6.787177e-001) + x2*1.361141e+000 + x3*4.242464e-001 + x4*1.198405e+000 + x5*(-5.632985e-001) + x6*1.061509e+000 $
;         + x7*4.075891e-001 + x8*7.144099e-001 + x9*6.250744e-001 + x10*(-2.498975e-001) + x11*1.350367e+000 + 1.150136e-001)))-1)*4.862338e-001 $
;         + (2/(1+exp(-2*(x1*4.578407e-001 + x2*(-5.847067e-001) + x3*(-2.917161e-002) + x4*2.628517e-001 + x5*(-3.792198e-001) + x6*4.973659e-001 $
;         + x7*(-5.139485e-001) + x8*1.184277e-002 + x9*1.015795e+000 + x10*2.645837e-003 + x11*(-1.766867e+000) -1.419026e-001)))-1)*1.004154e+000 $
;         + (2/(1+exp(-2*(x1*(-1.352320e+000) + x2*(-1.648298e-001) + x3*(-2.254672e-001) + x4*1.440311e+000 + x5*8.462713e-001 + x6*1.116300e-001 $
;         + x7*(-8.606460e-001) + x8*(-9.814566e-001) + x9*6.318561e-002 + x10*(-2.193766e-001) + x11*1.632348e-001 -5.647791e-001)))-1)*(-4.170333e-001) $
;         + (2/(1+exp(-2*(x1*1.140968e+000 + x2*1.314574e+000 + x3*(-8.578971e-001) + x4*1.531032e+000 + x5*1.332486e+000 + x6*(-3.567295e-001) $
;         + x7*5.739287e-002 + x8*5.872537e-001 + x9*1.270036e-001 + x10*3.409906e-001 + x11*(-1.766940e-001) -6.353121e-003)))-1)*3.479608e-001 $
;         + (2/(1+exp(-2*(x1*(-5.244430e-001) + x2*(-8.343656e-001) + x3*5.203498e-001 + x4*(-9.925469e-001) + x5*1.304630e+000 + x6*2.809569e-001 $
;         + x7*(-1.689703e-002) + x8*8.216344e-001 + x9*(-2.522851e-001) + x10*(-1.658768e-001) + x11*(-1.961988e+000) -1.776180e-001)))-1)*(-4.831269e-001) $
;         + (2/(1+exp(-2*(x1*3.279616e-001 + x2*(-4.375002e-001) + x3*4.387803e-002 + x4*(-5.501400e-001) + x5*(-8.565877e-001) + x6*4.391854e-002 $
;         + x7*6.908597e-002 + x8*6.846813e-001 + x9*2.778449e-001 + x10*(-5.143424e-001) + x11*(-8.861342e-001) + 6.886770e-001)))-1)*5.260336e-001 $
;         + (2/(1+exp(-2*(x1*3.334734e-001 + x2*(-1.996905e+000) + x3*(-6.054301e-001) + x4*4.512284e-001 + x5*(-1.499837e+000) + x6*(-1.759464e-001) $
;         + x7*2.002679e-001 + x8*2.484810e-001 + x9*(-6.863660e-002) + x10*2.007556e-001 + x11*(-1.232336e+000) -7.699519e-001)))-1)*2.280911e-001 $
;         + 2.540199e-001)))-1)*5.966355e-001 + (2/(1+exp(-2*((2/(1+exp(-2*(x1*(-2.037026e+000) + x2*2.307325e-001 + x3*(-1.049685e-001) $
;         + x4*(-7.108978e-001) + x5*1.314674e+000 + x6*(-1.656470e-002) + x7*(-3.499404e-001) + x8*(-7.373863e-003) + x9*(-1.501734e-001) $
;         + x10*(-3.302989e-002) + x11*(-9.501147e-001) -1.513720e+000)))-1)*6.262833e-002 + (2/(1+exp(-2*(x1*2.998261e-001 + x2*9.620630e-001 $
;         + x3*7.863338e-002 + x4*9.983103e-001 + x5*(-1.488616e-001) + x6*(-1.801891e-001) + x7*7.694381e-001 + x8*6.913113e-001 $
;         + x9*(-1.182937e-001) + x10*1.125942e-001 + x11*1.235984e-001 + 2.816774e-001)))-1)*7.577218e-002 + (2/(1+exp(-2*(x1*(-2.319732e+000) $
;         + x2*(-5.777909e-001) + x3*8.022373e-001 + x4*7.956962e-001 + x5*(-6.773465e-001) + x6*2.122697e-001 + x7*(-2.300928e-001) $
;         + x8*(-2.237993e-001) + x9*(-2.050171e-001) + x10*(-1.808916e-001) + x11*(-2.724216e-001) + 1.010599e+000)))-1)*4.812904e-002 $
;         + (2/(1+exp(-2*(x1*5.968258e-001 + x2*(-6.272039e-002) + x3*7.838866e-001 + x4*3.086514e-001 + x5*1.857262e-001 + x6*(-4.725408e-001) $
;         + x7*1.265467e+000 + x8*1.884844e-001 + x9*(-1.082419e+000) + x10*9.389020e-003 + x11*1.289086e+000 + 1.978971e-001)))-1)*1.570579e-002 $
;         + (2/(1+exp(-2*(x1*(-6.787177e-001) + x2*1.361141e+000 + x3*4.242464e-001 + x4*1.198405e+000 + x5*(-5.632985e-001) + x6*1.061509e+000 $
;         + x7*4.075891e-001 + x8*7.144099e-001 + x9*6.250744e-001 + x10*(-2.498975e-001) + x11*1.350367e+000 + 1.150136e-001)))-1)*1.598879e-002 $
;         + (2/(1+exp(-2*(x1*4.578407e-001 + x2*(-5.847067e-001) + x3*(-2.917161e-002) + x4*2.628517e-001 + x5*(-3.792198e-001) + x6*4.973659e-001 $
;         + x7*(-5.139485e-001) + x8*1.184277e-002 + x9*1.015795e+000 + x10*2.645837e-003 + x11*(-1.766867e+000) -1.419026e-001)))-1)*(-2.536239e-001) $
;         + (2/(1+exp(-2*(x1*(-1.352320e+000) + x2*(-1.648298e-001) + x3*(-2.254672e-001) + x4*1.440311e+000 + x5*8.462713e-001 + x6*1.116300e-001 $
;         + x7*(-8.606460e-001) + x8*(-9.814566e-001) + x9*6.318561e-002 + x10*(-2.193766e-001) + x11*1.632348e-001 -5.647791e-001)))-1)*2.973009e-002 $
;         + (2/(1+exp(-2*(x1*1.140968e+000 + x2*1.314574e+000 + x3*(-8.578971e-001) + x4*1.531032e+000 + x5*1.332486e+000 + x6*(-3.567295e-001) $
;         + x7*5.739287e-002 + x8*5.872537e-001 + x9*1.270036e-001 + x10*3.409906e-001 + x11*(-1.766940e-001) -6.353121e-003)))-1)*(-1.190828e-001) $
;         + (2/(1+exp(-2*(x1*(-5.244430e-001) + x2*(-8.343656e-001) + x3*5.203498e-001 + x4*(-9.925469e-001) + x5*1.304630e+000 + x6*2.809569e-001 $
;         + x7*(-1.689703e-002) + x8*8.216344e-001 + x9*(-2.522851e-001) + x10*(-1.658768e-001) + x11*(-1.961988e+000) -1.776180e-001)))-1)*2.721144e-002 $
;         + (2/(1+exp(-2*(x1*3.279616e-001 + x2*(-4.375002e-001) + x3*4.387803e-002 + x4*(-5.501400e-001) + x5*(-8.565877e-001) + x6*4.391854e-002 $
;         + x7*6.908597e-002 + x8*6.846813e-001 + x9*2.778449e-001 + x10*(-5.143424e-001) + x11*(-8.861342e-001) + 6.886770e-001)))-1)*2.055692e-001 $
;         + (2/(1+exp(-2*(x1*3.334734e-001 + x2*(-1.996905e+000) + x3*(-6.054301e-001) + x4*4.512284e-001 + x5*(-1.499837e+000) + x6*(-1.759464e-001) $
;         + x7*2.002679e-001 + x8*2.484810e-001 + x9*(-6.863660e-002) + x10*2.007556e-001 + x11*(-1.232336e+000) -7.699519e-001)))-1)*(-4.588557e-002) $
;         + 7.263097e-002)))-1)*3.463877e-001 + (2/(1+exp(-2*((2/(1+exp(-2*(x1*(-2.037026e+000) + x2*2.307325e-001 + x3*(-1.049685e-001) + x4*(-7.108978e-001) $
;         + x5*1.314674e+000 + x6*(-1.656470e-002) + x7*(-3.499404e-001) + x8*(-7.373863e-003) + x9*(-1.501734e-001) + x10*(-3.302989e-002) $
;         + x11*(-9.501147e-001) -1.513720e+000)))-1)*1.321599e-001 + (2/(1+exp(-2*(x1*2.998261e-001 + x2*9.620630e-001 + x3*7.863338e-002 + $
;         x4*9.983103e-001 + x5*(-1.488616e-001) + x6*(-1.801891e-001) + x7*7.694381e-001 + x8*6.913113e-001 + x9*(-1.182937e-001) + x10*1.125942e-001 $
;         + x11*1.235984e-001 + 2.816774e-001)))-1)*3.532040e-001 + (2/(1+exp(-2*(x1*(-2.319732e+000) + x2*(-5.777909e-001) + x3*8.022373e-001 $
;         + x4*7.956962e-001 + x5*(-6.773465e-001) + x6*2.122697e-001 + x7*(-2.300928e-001) + x8*(-2.237993e-001) + x9*(-2.050171e-001) $
;         + x10*(-1.808916e-001) + x11*(-2.724216e-001) + 1.010599e+000)))-1)*(-3.317638e-001) + (2/(1+exp(-2*(x1*5.968258e-001 + x2*(-6.272039e-002) $
;         + x3*7.838866e-001 + x4*3.086514e-001 + x5*1.857262e-001 + x6*(-4.725408e-001) + x7*1.265467e+000 + x8*1.884844e-001 + x9*(-1.082419e+000) $
;         + x10*9.389020e-003 + x11*1.289086e+000 + 1.978971e-001)))-1)*(-2.075075e-002) + (2/(1+exp(-2*(x1*(-6.787177e-001) + x2*1.361141e+000 $
;         + x3*4.242464e-001 + x4*1.198405e+000 + x5*(-5.632985e-001) + x6*1.061509e+000 + x7*4.075891e-001 + x8*7.144099e-001 + x9*6.250744e-001 $
;         + x10*(-2.498975e-001) + x11*1.350367e+000 + 1.150136e-001)))-1)*(-6.443401e-001) + (2/(1+exp(-2*(x1*4.578407e-001 + x2*(-5.847067e-001) $
;         + x3*(-2.917161e-002) + x4*2.628517e-001 + x5*(-3.792198e-001) + x6*4.973659e-001 + x7*(-5.139485e-001) + x8*1.184277e-002 + x9*1.015795e+000 $
;         + x10*2.645837e-003 + x11*(-1.766867e+000) -1.419026e-001)))-1)*2.585118e-001 + (2/(1+exp(-2*(x1*(-1.352320e+000) + x2*(-1.648298e-001) $
;         + x3*(-2.254672e-001) + x4*1.440311e+000 + x5*8.462713e-001 + x6*1.116300e-001 + x7*(-8.606460e-001) + x8*(-9.814566e-001) + x9*6.318561e-002 $
;         + x10*(-2.193766e-001) + x11*1.632348e-001 -5.647791e-001)))-1)*1.794367e-001 + (2/(1+exp(-2*(x1*1.140968e+000 + x2*1.314574e+000 + x3*(-8.578971e-001) $
;         + x4*1.531032e+000 + x5*1.332486e+000 + x6*(-3.567295e-001) + x7*5.739287e-002 + x8*5.872537e-001 + x9*1.270036e-001 + x10*3.409906e-001 $
;         + x11*(-1.766940e-001) -6.353121e-003)))-1)*(-3.546960e-001) + (2/(1+exp(-2*(x1*(-5.244430e-001) + x2*(-8.343656e-001) + x3*5.203498e-001 $
;         + x4*(-9.925469e-001) + x5*1.304630e+000 + x6*2.809569e-001 + x7*(-1.689703e-002) + x8*8.216344e-001 + x9*(-2.522851e-001) + x10*(-1.658768e-001) $
;         + x11*(-1.961988e+000) -1.776180e-001)))-1)*(-4.908954e-002) + (2/(1+exp(-2*(x1*3.279616e-001 + x2*(-4.375002e-001) + x3*4.387803e-002 $
;         + x4*(-5.501400e-001) + x5*(-8.565877e-001) + x6*4.391854e-002 + x7*6.908597e-002 + x8*6.846813e-001 + x9*2.778449e-001 + x10*(-5.143424e-001) $
;         + x11*(-8.861342e-001) + 6.886770e-001)))-1)*5.411484e-001 + (2/(1+exp(-2*(x1*3.334734e-001 + x2*(-1.996905e+000) + x3*(-6.054301e-001) $
;         + x4*4.512284e-001 + x5*(-1.499837e+000) + x6*(-1.759464e-001) + x7*2.002679e-001 + x8*2.484810e-001 + x9*(-6.863660e-002) + x10*2.007556e-001 $
;         + x11*(-1.232336e+000) -7.699519e-001)))-1)*(-9.142672e-003) -2.827572e-002)))-1)*8.457481e-001 + (2/(1+exp(-2*((2/(1+exp(-2*(x1*(-2.037026e+000) $
;         + x2*2.307325e-001 + x3*(-1.049685e-001) + x4*(-7.108978e-001) + x5*1.314674e+000 + x6*(-1.656470e-002) + x7*(-3.499404e-001) + x8*(-7.373863e-003) $
;         + x9*(-1.501734e-001) + x10*(-3.302989e-002) + x11*(-9.501147e-001) -1.513720e+000)))-1)*4.730069e-001 + (2/(1+exp(-2*(x1*2.998261e-001 $
;         + x2*9.620630e-001 + x3*7.863338e-002 + x4*9.983103e-001 + x5*(-1.488616e-001) + x6*(-1.801891e-001) + x7*7.694381e-001 + x8*6.913113e-001 + x9*(-1.182937e-001) $
;         + x10*1.125942e-001 + x11*1.235984e-001 + 2.816774e-001)))-1)*8.812826e-002 + (2/(1+exp(-2*(x1*(-2.319732e+000) + x2*(-5.777909e-001) + x3*8.022373e-001 $
;         + x4*7.956962e-001 + x5*(-6.773465e-001) + x6*2.122697e-001 + x7*(-2.300928e-001) + x8*(-2.237993e-001) + x9*(-2.050171e-001) + x10*(-1.808916e-001) $
;         + x11*(-2.724216e-001) + 1.010599e+000)))-1)*7.376786e-001 + (2/(1+exp(-2*(x1*5.968258e-001 + x2*(-6.272039e-002) + x3*7.838866e-001 + x4*3.086514e-001 $
;         + x5*1.857262e-001 + x6*(-4.725408e-001) + x7*1.265467e+000 + x8*1.884844e-001 + x9*(-1.082419e+000) + x10*9.389020e-003 + x11*1.289086e+000 $
;         + 1.978971e-001)))-1)*(-3.266338e-001) + (2/(1+exp(-2*(x1*(-6.787177e-001) + x2*1.361141e+000 + x3*4.242464e-001 + x4*1.198405e+000 + x5*(-5.632985e-001) $
;         + x6*1.061509e+000 + x7*4.075891e-001 + x8*7.144099e-001 + x9*6.250744e-001 + x10*(-2.498975e-001) + x11*1.350367e+000 + 1.150136e-001)))-1)*4.228715e-001 $
;         + (2/(1+exp(-2*(x1*4.578407e-001 + x2*(-5.847067e-001) + x3*(-2.917161e-002) + x4*2.628517e-001 + x5*(-3.792198e-001) + x6*4.973659e-001 + x7*(-5.139485e-001) $
;         + x8*1.184277e-002 + x9*1.015795e+000 + x10*2.645837e-003 + x11*(-1.766867e+000) -1.419026e-001)))-1)*7.419038e-001 + (2/(1+exp(-2*(x1*(-1.352320e+000) $
;         + x2*(-1.648298e-001) + x3*(-2.254672e-001) + x4*1.440311e+000 + x5*8.462713e-001 + x6*1.116300e-001 + x7*(-8.606460e-001) + x8*(-9.814566e-001) $
;         + x9*6.318561e-002 + x10*(-2.193766e-001) + x11*1.632348e-001 -5.647791e-001)))-1)*(-8.215194e-001) + (2/(1+exp(-2*(x1*1.140968e+000 + x2*1.314574e+000 $
;         + x3*(-8.578971e-001) + x4*1.531032e+000 + x5*1.332486e+000 + x6*(-3.567295e-001) + x7*5.739287e-002 + x8*5.872537e-001 + x9*1.270036e-001 + x10*3.409906e-001 $
;         + x11*(-1.766940e-001) -6.353121e-003)))-1)*1.764910e-001 + (2/(1+exp(-2*(x1*(-5.244430e-001) + x2*(-8.343656e-001) + x3*5.203498e-001 + x4*(-9.925469e-001) $
;         + x5*1.304630e+000 + x6*2.809569e-001 + x7*(-1.689703e-002) + x8*8.216344e-001 + x9*(-2.522851e-001) + x10*(-1.658768e-001) $
;         + x11*(-1.961988e+000) -1.776180e-001)))-1)*(-7.492649e-001) + (2/(1+exp(-2*(x1*3.279616e-001 + x2*(-4.375002e-001) + x3*4.387803e-002 + x4*(-5.501400e-001) $
;         + x5*(-8.565877e-001) + x6*4.391854e-002 + x7*6.908597e-002 + x8*6.846813e-001 + x9*2.778449e-001 + x10*(-5.143424e-001) + x11*(-8.861342e-001) $
;         + 6.886770e-001)))-1)*3.912036e-001 + (2/(1+exp(-2*(x1*3.334734e-001 + x2*(-1.996905e+000) + x3*(-6.054301e-001) + x4*4.512284e-001 + x5*(-1.499837e+000) $
;         + x6*(-1.759464e-001) + x7*2.002679e-001 + x8*2.484810e-001 + x9*(-6.863660e-002) + x10*2.007556e-001 + x11*(-1.232336e+000) -7.699519e-001)))-1)*(-9.638679e-002) $
;         -6.991307e-002)))-1)*1.075454e+000 + (2/(1+exp(-2*((2/(1+exp(-2*(x1*(-2.037026e+000) + x2*2.307325e-001 + x3*(-1.049685e-001) + x4*(-7.108978e-001) $
;         + x5*1.314674e+000 + x6*(-1.656470e-002) + x7*(-3.499404e-001) + x8*(-7.373863e-003) + x9*(-1.501734e-001) + x10*(-3.302989e-002) $
;         + x11*(-9.501147e-001) -1.513720e+000)))-1)*(-5.912786e-001) + (2/(1+exp(-2*(x1*2.998261e-001 + x2*9.620630e-001 + x3*7.863338e-002 + x4*9.983103e-001 $
;         + x5*(-1.488616e-001) + x6*(-1.801891e-001) + x7*7.694381e-001 + x8*6.913113e-001 + x9*(-1.182937e-001) + x10*1.125942e-001 $
;         + x11*1.235984e-001 + 2.816774e-001)))-1)*(-6.706869e-002) + (2/(1+exp(-2*(x1*(-2.319732e+000) + x2*(-5.777909e-001) + x3*8.022373e-001 + x4*7.956962e-001 $
;         + x5*(-6.773465e-001) + x6*2.122697e-001 + x7*(-2.300928e-001) + x8*(-2.237993e-001) + x9*(-2.050171e-001) + x10*(-1.808916e-001)$
;          + x11*(-2.724216e-001) + 1.010599e+000)))-1)*2.968342e-001 + (2/(1+exp(-2*(x1*5.968258e-001 + x2*(-6.272039e-002) + x3*7.838866e-001 + x4*3.086514e-001 $
;          + x5*1.857262e-001 + x6*(-4.725408e-001) + x7*1.265467e+000 + x8*1.884844e-001 + x9*(-1.082419e+000) + x10*9.389020e-003 $
;          + x11*1.289086e+000 + 1.978971e-001)))-1)*(-8.594613e-001) + (2/(1+exp(-2*(x1*(-6.787177e-001) + x2*1.361141e+000 + x3*4.242464e-001 + x4*1.198405e+000 $
;          + x5*(-5.632985e-001) + x6*1.061509e+000 + x7*4.075891e-001 + x8*7.144099e-001 + x9*6.250744e-001 + x10*(-2.498975e-001) $
;          + x11*1.350367e+000 + 1.150136e-001)))-1)*(-3.615223e-003) + (2/(1+exp(-2*(x1*4.578407e-001 + x2*(-5.847067e-001) + x3*(-2.917161e-002) + x4*2.628517e-001 $
;          + x5*(-3.792198e-001) + x6*4.973659e-001 + x7*(-5.139485e-001) + x8*1.184277e-002 + x9*1.015795e+000 + x10*2.645837e-003 $
;          + x11*(-1.766867e+000) -1.419026e-001)))-1)*9.394056e-001 + (2/(1+exp(-2*(x1*(-1.352320e+000) + x2*(-1.648298e-001) + x3*(-2.254672e-001) + x4*1.440311e+000 $
;          + x5*8.462713e-001 + x6*1.116300e-001 + x7*(-8.606460e-001) + x8*(-9.814566e-001) + x9*6.318561e-002 + x10*(-2.193766e-001) $
;          + x11*1.632348e-001 -5.647791e-001)))-1)*1.183492e+000 + (2/(1+exp(-2*(x1*1.140968e+000 + x2*1.314574e+000 + x3*(-8.578971e-001) + x4*1.531032e+000 $
;          + x5*1.332486e+000 + x6*(-3.567295e-001) + x7*5.739287e-002 + x8*5.872537e-001 + x9*1.270036e-001 + x10*3.409906e-001 $
;          + x11*(-1.766940e-001) -6.353121e-003)))-1)*(-6.713817e-001) + (2/(1+exp(-2*(x1*(-5.244430e-001) + x2*(-8.343656e-001) + x3*5.203498e-001 + x4*(-9.925469e-001) $
;          + x5*1.304630e+000 + x6*2.809569e-001 + x7*(-1.689703e-002) + x8*8.216344e-001 + x9*(-2.522851e-001) + x10*(-1.658768e-001) $
;          + x11*(-1.961988e+000) -1.776180e-001)))-1)*2.800410e-001 + (2/(1+exp(-2*(x1*3.279616e-001 + x2*(-4.375002e-001) + x3*4.387803e-002 + x4*(-5.501400e-001) $
;          + x5*(-8.565877e-001) + x6*4.391854e-002 + x7*6.908597e-002 + x8*6.846813e-001 + x9*2.778449e-001 + x10*(-5.143424e-001) $
;          + x11*(-8.861342e-001) + 6.886770e-001)))-1)*(-7.945103e-001) + (2/(1+exp(-2*(x1*3.334734e-001 + x2*(-1.996905e+000) + x3*(-6.054301e-001) + x4*4.512284e-001 $
;          + x5*(-1.499837e+000) + x6*(-1.759464e-001) + x7*2.002679e-001 + x8*2.484810e-001 + x9*(-6.863660e-002) + x10*2.007556e-001 $
;          + x11*(-1.232336e+000) -7.699519e-001)))-1)*5.259341e-001 + 3.425133e-002)))-1)*(-1.208776e+000) + (2/(1+exp(-2*((2/(1+exp(-2*(x1*(-2.037026e+000) $
;          + x2*2.307325e-001 + x3*(-1.049685e-001) + x4*(-7.108978e-001) + x5*1.314674e+000 + x6*(-1.656470e-002) + x7*(-3.499404e-001) + x8*(-7.373863e-003) $
;          + x9*(-1.501734e-001) + x10*(-3.302989e-002) + x11*(-9.501147e-001) -1.513720e+000)))-1)*(-9.121234e-002) + (2/(1+exp(-2*(x1*2.998261e-001 $
;          + x2*9.620630e-001 + x3*7.863338e-002 + x4*9.983103e-001 + x5*(-1.488616e-001) + x6*(-1.801891e-001) + x7*7.694381e-001 + x8*6.913113e-001 $
;          + x9*(-1.182937e-001) + x10*1.125942e-001 + x11*1.235984e-001 + 2.816774e-001)))-1)*(-7.196555e-001) + (2/(1+exp(-2*(x1*(-2.319732e+000) $
;          + x2*(-5.777909e-001) + x3*8.022373e-001 + x4*7.956962e-001 + x5*(-6.773465e-001) + x6*2.122697e-001 + x7*(-2.300928e-001) + x8*(-2.237993e-001) $
;          + x9*(-2.050171e-001) + x10*(-1.808916e-001) + x11*(-2.724216e-001) + 1.010599e+000)))-1)*(-8.830334e-002) + (2/(1+exp(-2*(x1*5.968258e-001 $
;          + x2*(-6.272039e-002) + x3*7.838866e-001 + x4*3.086514e-001 + x5*1.857262e-001 + x6*(-4.725408e-001) + x7*1.265467e+000 + x8*1.884844e-001 + x9*(-1.082419e+000) $
;          + x10*9.389020e-003 + x11*1.289086e+000 + 1.978971e-001)))-1)*(-4.622756e-001) + (2/(1+exp(-2*(x1*(-6.787177e-001) + x2*1.361141e+000 + x3*4.242464e-001 $
;          + x4*1.198405e+000 + x5*(-5.632985e-001) + x6*1.061509e+000 + x7*4.075891e-001 + x8*7.144099e-001 + x9*6.250744e-001 + x10*(-2.498975e-001) + x11*1.350367e+000 $
;          + 1.150136e-001)))-1)*6.948421e-001 + (2/(1+exp(-2*(x1*4.578407e-001 + x2*(-5.847067e-001) + x3*(-2.917161e-002) + x4*2.628517e-001 + x5*(-3.792198e-001) $
;          + x6*4.973659e-001 + x7*(-5.139485e-001) + x8*1.184277e-002 + x9*1.015795e+000 + x10*2.645837e-003 + x11*(-1.766867e+000) -1.419026e-001)))-1)*1.828770e-001 $
;          + (2/(1+exp(-2*(x1*(-1.352320e+000) + x2*(-1.648298e-001) + x3*(-2.254672e-001) + x4*1.440311e+000 + x5*8.462713e-001 + x6*1.116300e-001 + x7*(-8.606460e-001) $
;          + x8*(-9.814566e-001) + x9*6.318561e-002 + x10*(-2.193766e-001) + x11*1.632348e-001 -5.647791e-001)))-1)*(-2.115999e-001) + (2/(1+exp(-2*(x1*1.140968e+000 $
;          + x2*1.314574e+000 + x3*(-8.578971e-001) + x4*1.531032e+000 + x5*1.332486e+000 + x6*(-3.567295e-001) + x7*5.739287e-002 + x8*5.872537e-001 + x9*1.270036e-001 $
;          + x10*3.409906e-001 + x11*(-1.766940e-001) -6.353121e-003)))-1)*(-2.424329e-001) + (2/(1+exp(-2*(x1*(-5.244430e-001) + x2*(-8.343656e-001) + x3*5.203498e-001 $
;          + x4*(-9.925469e-001) + x5*1.304630e+000 + x6*2.809569e-001 + x7*(-1.689703e-002) + x8*8.216344e-001 + x9*(-2.522851e-001) + x10*(-1.658768e-001) $
;          + x11*(-1.961988e+000) -1.776180e-001)))-1)*(-2.252886e-001) + (2/(1+exp(-2*(x1*3.279616e-001 + x2*(-4.375002e-001) + x3*4.387803e-002 + x4*(-5.501400e-001) $
;          + x5*(-8.565877e-001) + x6*4.391854e-002 + x7*6.908597e-002 + x8*6.846813e-001 + x9*2.778449e-001 + x10*(-5.143424e-001) + x11*(-8.861342e-001) $
;          + 6.886770e-001)))-1)*(-1.370188e-001) + (2/(1+exp(-2*(x1*3.334734e-001 + x2*(-1.996905e+000) + x3*(-6.054301e-001) + x4*4.512284e-001 + x5*(-1.499837e+000) $
;          + x6*(-1.759464e-001) + x7*2.002679e-001 + x8*2.484810e-001 + x9*(-6.863660e-002) + x10*2.007556e-001 $
;          + x11*(-1.232336e+000) -7.699519e-001)))-1)*(-9.512696e-002) -1.322122e-001)))-1)*5.676923e-001 + (2/(1+exp(-2*((2/(1+exp(-2*(x1*(-2.037026e+000) $
;          + x2*2.307325e-001 + x3*(-1.049685e-001) + x4*(-7.108978e-001) + x5*1.314674e+000 + x6*(-1.656470e-002) + x7*(-3.499404e-001) + x8*(-7.373863e-003)$
;           + x9*(-1.501734e-001) + x10*(-3.302989e-002) + x11*(-9.501147e-001) -1.513720e+000)))-1)*(-1.749641e-001) + (2/(1+exp(-2*(x1*2.998261e-001 + x2*9.620630e-001 $
;           + x3*7.863338e-002 + x4*9.983103e-001 + x5*(-1.488616e-001) + x6*(-1.801891e-001) + x7*7.694381e-001 + x8*6.913113e-001 + x9*(-1.182937e-001) $
;           + x10*1.125942e-001 + x11*1.235984e-001 + 2.816774e-001)))-1)*(-1.815390e-001) + (2/(1+exp(-2*(x1*(-2.319732e+000) + x2*(-5.777909e-001) + x3*8.022373e-001 $
;           + x4*7.956962e-001 + x5*(-6.773465e-001) + x6*2.122697e-001 + x7*(-2.300928e-001) + x8*(-2.237993e-001) + x9*(-2.050171e-001) + x10*(-1.808916e-001) $
;           + x11*(-2.724216e-001) + 1.010599e+000)))-1)*1.489983e-002 + (2/(1+exp(-2*(x1*5.968258e-001 + x2*(-6.272039e-002) + x3*7.838866e-001 + x4*3.086514e-001 $
;           + x5*1.857262e-001 + x6*(-4.725408e-001) + x7*1.265467e+000 + x8*1.884844e-001 + x9*(-1.082419e+000) + x10*9.389020e-003 $
;           + x11*1.289086e+000 + 1.978971e-001)))-1)*4.881228e-002 + (2/(1+exp(-2*(x1*(-6.787177e-001) + x2*1.361141e+000 + x3*4.242464e-001 + x4*1.198405e+000 $
;           + x5*(-5.632985e-001) + x6*1.061509e+000 + x7*4.075891e-001 + x8*7.144099e-001 + x9*6.250744e-001 + x10*(-2.498975e-001) $
;           + x11*1.350367e+000 + 1.150136e-001)))-1)*1.989935e-002 + (2/(1+exp(-2*(x1*4.578407e-001 + x2*(-5.847067e-001) + x3*(-2.917161e-002) + x4*2.628517e-001 $
;           + x5*(-3.792198e-001) + x6*4.973659e-001 + x7*(-5.139485e-001) + x8*1.184277e-002 + x9*1.015795e+000 + x10*2.645837e-003 $
;           + x11*(-1.766867e+000) -1.419026e-001)))-1)*2.671664e-001 + (2/(1+exp(-2*(x1*(-1.352320e+000) + x2*(-1.648298e-001) + x3*(-2.254672e-001) + x4*1.440311e+000 $
;           + x5*8.462713e-001 + x6*1.116300e-001 + x7*(-8.606460e-001) + x8*(-9.814566e-001) + x9*6.318561e-002 + x10*(-2.193766e-001) $
;           + x11*1.632348e-001 -5.647791e-001)))-1)*(-4.479535e-002) + (2/(1+exp(-2*(x1*1.140968e+000 + x2*1.314574e+000 + x3*(-8.578971e-001) + x4*1.531032e+000 $
;           + x5*1.332486e+000 + x6*(-3.567295e-001) + x7*5.739287e-002 + x8*5.872537e-001 + x9*1.270036e-001 + x10*3.409906e-001 $
;           + x11*(-1.766940e-001) -6.353121e-003)))-1)*5.977605e-002 + (2/(1+exp(-2*(x1*(-5.244430e-001) + x2*(-8.343656e-001) + x3*5.203498e-001 + x4*(-9.925469e-001) $
;           + x5*1.304630e+000 + x6*2.809569e-001 + x7*(-1.689703e-002) + x8*8.216344e-001 + x9*(-2.522851e-001) + x10*(-1.658768e-001) $
;           + x11*(-1.961988e+000) -1.776180e-001)))-1)*3.937502e-002 + (2/(1+exp(-2*(x1*3.279616e-001 + x2*(-4.375002e-001) + x3*4.387803e-002 + x4*(-5.501400e-001) $
;           + x5*(-8.565877e-001) + x6*4.391854e-002 + x7*6.908597e-002 + x8*6.846813e-001 + x9*2.778449e-001 + x10*(-5.143424e-001) $
;           + x11*(-8.861342e-001) + 6.886770e-001)))-1)*(-1.569620e-001) + (2/(1+exp(-2*(x1*3.334734e-001 + x2*(-1.996905e+000) + x3*(-6.054301e-001) + x4*4.512284e-001 $
;           + x5*(-1.499837e+000) + x6*(-1.759464e-001) + x7*2.002679e-001 + x8*2.484810e-001 + x9*(-6.863660e-002) + x10*2.007556e-001 $
;           + x11*(-1.232336e+000) -7.699519e-001)))-1)*1.590255e-002 + 1.598632e-003)))-1)*(-3.903780e-001) + (2/(1+exp(-2*((2/(1+exp(-2*(x1*(-2.037026e+000) $
;           + x2*2.307325e-001 + x3*(-1.049685e-001) + x4*(-7.108978e-001) + x5*1.314674e+000 + x6*(-1.656470e-002) + x7*(-3.499404e-001) + x8*(-7.373863e-003) $
;           + x9*(-1.501734e-001) + x10*(-3.302989e-002) + x11*(-9.501147e-001) -1.513720e+000)))-1)*(-5.475257e-001) + (2/(1+exp(-2*(x1*2.998261e-001 + x2*9.620630e-001 $
;           + x3*7.863338e-002 + x4*9.983103e-001 + x5*(-1.488616e-001) + x6*(-1.801891e-001) + x7*7.694381e-001 + x8*6.913113e-001 + x9*(-1.182937e-001)$
;            + x10*1.125942e-001 + x11*1.235984e-001 + 2.816774e-001)))-1)*(-1.482648e-001) + (2/(1+exp(-2*(x1*(-2.319732e+000) + x2*(-5.777909e-001) + x3*8.022373e-001 $
;            + x4*7.956962e-001 + x5*(-6.773465e-001) + x6*2.122697e-001 + x7*(-2.300928e-001) + x8*(-2.237993e-001) + x9*(-2.050171e-001) + x10*(-1.808916e-001) $
;            + x11*(-2.724216e-001) + 1.010599e+000)))-1)*5.308478e-001 + (2/(1+exp(-2*(x1*5.968258e-001 + x2*(-6.272039e-002) + x3*7.838866e-001 + x4*3.086514e-001 $
;            + x5*1.857262e-001 + x6*(-4.725408e-001) + x7*1.265467e+000 + x8*1.884844e-001 + x9*(-1.082419e+000) + x10*9.389020e-003 $
;            + x11*1.289086e+000 + 1.978971e-001)))-1)*(-2.610472e-001) + (2/(1+exp(-2*(x1*(-6.787177e-001) + x2*1.361141e+000 + x3*4.242464e-001 + x4*1.198405e+000 $
;            + x5*(-5.632985e-001) + x6*1.061509e+000 + x7*4.075891e-001 + x8*7.144099e-001 + x9*6.250744e-001 + x10*(-2.498975e-001) $
;            + x11*1.350367e+000 + 1.150136e-001)))-1)*(-4.356454e-001) + (2/(1+exp(-2*(x1*4.578407e-001 + x2*(-5.847067e-001) + x3*(-2.917161e-002) $
;            + x4*2.628517e-001 + x5*(-3.792198e-001) + x6*4.973659e-001 + x7*(-5.139485e-001) + x8*1.184277e-002 + x9*1.015795e+000 + x10*2.645837e-003 $
;            + x11*(-1.766867e+000) -1.419026e-001)))-1)*6.484265e-002 + (2/(1+exp(-2*(x1*(-1.352320e+000) + x2*(-1.648298e-001) + x3*(-2.254672e-001) + x4*1.440311e+000 $
;            + x5*8.462713e-001 + x6*1.116300e-001 + x7*(-8.606460e-001) + x8*(-9.814566e-001) + x9*6.318561e-002 + x10*(-2.193766e-001) $
;            + x11*1.632348e-001 -5.647791e-001)))-1)*1.049356e-001 + (2/(1+exp(-2*(x1*1.140968e+000 + x2*1.314574e+000 + x3*(-8.578971e-001) + x4*1.531032e+000 $
;            + x5*1.332486e+000 + x6*(-3.567295e-001) + x7*5.739287e-002 + x8*5.872537e-001 + x9*1.270036e-001 + x10*3.409906e-001 $
;            + x11*(-1.766940e-001) -6.353121e-003)))-1)*1.348648e-001 + (2/(1+exp(-2*(x1*(-5.244430e-001) + x2*(-8.343656e-001) + x3*5.203498e-001 $
;            + x4*(-9.925469e-001) + x5*1.304630e+000 + x6*2.809569e-001 + x7*(-1.689703e-002) + x8*8.216344e-001 + x9*(-2.522851e-001) + x10*(-1.658768e-001) $
;            + x11*(-1.961988e+000) -1.776180e-001)))-1)*(-1.372397e+000) + (2/(1+exp(-2*(x1*3.279616e-001 + x2*(-4.375002e-001) + x3*4.387803e-002 + x4*(-5.501400e-001) $
;            + x5*(-8.565877e-001) + x6*4.391854e-002 + x7*6.908597e-002 + x8*6.846813e-001 + x9*2.778449e-001 + x10*(-5.143424e-001) $
;            + x11*(-8.861342e-001) + 6.886770e-001)))-1)*2.558957e-002 + (2/(1+exp(-2*(x1*3.334734e-001 + x2*(-1.996905e+000) + x3*(-6.054301e-001) + x4*4.512284e-001$
;             + x5*(-1.499837e+000) + x6*(-1.759464e-001) + x7*2.002679e-001 + x8*2.484810e-001 + x9*(-6.863660e-002) + x10*2.007556e-001$
;              + x11*(-1.232336e+000) -7.699519e-001)))-1)*(-1.182865e-001) -5.118249e-001)))-1)*(-9.790961e-001) + (2/(1+exp(-2*((2/(1+exp(-2*(x1*(-2.037026e+000) $
;              + x2*2.307325e-001 + x3*(-1.049685e-001) + x4*(-7.108978e-001) + x5*1.314674e+000 + x6*(-1.656470e-002) + x7*(-3.499404e-001) + x8*(-7.373863e-003) $
;              + x9*(-1.501734e-001) + x10*(-3.302989e-002) + x11*(-9.501147e-001) -1.513720e+000)))-1)*(-2.411841e-001) + (2/(1+exp(-2*(x1*2.998261e-001 $
;              + x2*9.620630e-001 + x3*7.863338e-002 + x4*9.983103e-001 + x5*(-1.488616e-001) + x6*(-1.801891e-001) + x7*7.694381e-001 + x8*6.913113e-001 $
;              + x9*(-1.182937e-001) + x10*1.125942e-001 + x11*1.235984e-001 + 2.816774e-001)))-1)*4.578620e-001 + (2/(1+exp(-2*(x1*(-2.319732e+000) + x2*(-5.777909e-001)$
;               + x3*8.022373e-001 + x4*7.956962e-001 + x5*(-6.773465e-001) + x6*2.122697e-001 + x7*(-2.300928e-001) + x8*(-2.237993e-001) + x9*(-2.050171e-001) $
;               + x10*(-1.808916e-001) + x11*(-2.724216e-001) + 1.010599e+000)))-1)*2.763853e-001 + (2/(1+exp(-2*(x1*5.968258e-001 + x2*(-6.272039e-002) + x3*7.838866e-001 $
;               + x4*3.086514e-001 + x5*1.857262e-001 + x6*(-4.725408e-001) + x7*1.265467e+000 + x8*1.884844e-001 + x9*(-1.082419e+000) + x10*9.389020e-003 $
;               + x11*1.289086e+000 + 1.978971e-001)))-1)*(-3.773698e-001) + (2/(1+exp(-2*(x1*(-6.787177e-001) + x2*1.361141e+000 + x3*4.242464e-001 + x4*1.198405e+000 $
;               + x5*(-5.632985e-001) + x6*1.061509e+000 + x7*4.075891e-001 + x8*7.144099e-001 + x9*6.250744e-001 + x10*(-2.498975e-001) + x11*1.350367e+000 $
;               + 1.150136e-001)))-1)*2.511864e-001 + (2/(1+exp(-2*(x1*4.578407e-001 + x2*(-5.847067e-001) + x3*(-2.917161e-002) + x4*2.628517e-001 + x5*(-3.792198e-001) $
;               + x6*4.973659e-001 + x7*(-5.139485e-001) + x8*1.184277e-002 + x9*1.015795e+000 + x10*2.645837e-003 + x11*(-1.766867e+000) -1.419026e-001)))-1)*(-4.870540e-001) $
;               + (2/(1+exp(-2*(x1*(-1.352320e+000) + x2*(-1.648298e-001) + x3*(-2.254672e-001) + x4*1.440311e+000 + x5*8.462713e-001 + x6*1.116300e-001 $
;               + x7*(-8.606460e-001) + x8*(-9.814566e-001) + x9*6.318561e-002 + x10*(-2.193766e-001) + x11*1.632348e-001 -5.647791e-001)))-1)*3.639856e-001 $
;               + (2/(1+exp(-2*(x1*1.140968e+000 + x2*1.314574e+000 + x3*(-8.578971e-001) + x4*1.531032e+000 + x5*1.332486e+000 + x6*(-3.567295e-001) + x7*5.739287e-002 $
;               + x8*5.872537e-001 + x9*1.270036e-001 + x10*3.409906e-001 + x11*(-1.766940e-001) -6.353121e-003)))-1)*(-2.382691e-001) + (2/(1+exp(-2*(x1*(-5.244430e-001) $
;               + x2*(-8.343656e-001) + x3*5.203498e-001 + x4*(-9.925469e-001) + x5*1.304630e+000 + x6*2.809569e-001 + x7*(-1.689703e-002) + x8*8.216344e-001$
;                + x9*(-2.522851e-001) + x10*(-1.658768e-001) + x11*(-1.961988e+000) -1.776180e-001)))-1)*(-5.478356e-001) + (2/(1+exp(-2*(x1*3.279616e-001 $
;                + x2*(-4.375002e-001) + x3*4.387803e-002 + x4*(-5.501400e-001) + x5*(-8.565877e-001) + x6*4.391854e-002 + x7*6.908597e-002 + x8*6.846813e-001 $
;                + x9*2.778449e-001 + x10*(-5.143424e-001) + x11*(-8.861342e-001) + 6.886770e-001)))-1)*2.728747e-001 + (2/(1+exp(-2*(x1*3.334734e-001 + x2*(-1.996905e+000) $
;                + x3*(-6.054301e-001) + x4*4.512284e-001 + x5*(-1.499837e+000) + x6*(-1.759464e-001) + x7*2.002679e-001 + x8*2.484810e-001 + x9*(-6.863660e-002) $
;                + x10*2.007556e-001 + x11*(-1.232336e+000) -7.699519e-001)))-1)*2.580081e-001 -3.670648e-001)))-1)*(-7.705198e-001) $
;                + (2/(1+exp(-2*((2/(1+exp(-2*(x1*(-2.037026e+000) + x2*2.307325e-001 + x3*(-1.049685e-001) + x4*(-7.108978e-001) + x5*1.314674e+000 + x6*(-1.656470e-002) $
;                + x7*(-3.499404e-001) + x8*(-7.373863e-003) + x9*(-1.501734e-001) + x10*(-3.302989e-002) + x11*(-9.501147e-001) -1.513720e+000)))-1)*5.942462e-001 $
;                + (2/(1+exp(-2*(x1*2.998261e-001 + x2*9.620630e-001 + x3*7.863338e-002 + x4*9.983103e-001 + x5*(-1.488616e-001) + x6*(-1.801891e-001) + x7*7.694381e-001 $
;                + x8*6.913113e-001 + x9*(-1.182937e-001) + x10*1.125942e-001 + x11*1.235984e-001 + 2.816774e-001)))-1)*(-2.346976e-001) + (2/(1+exp(-2*(x1*(-2.319732e+000) $
;                + x2*(-5.777909e-001) + x3*8.022373e-001 + x4*7.956962e-001 + x5*(-6.773465e-001) + x6*2.122697e-001 + x7*(-2.300928e-001) + x8*(-2.237993e-001) $
;                + x9*(-2.050171e-001) + x10*(-1.808916e-001) + x11*(-2.724216e-001) + 1.010599e+000)))-1)*(-7.715558e-001) + (2/(1+exp(-2*(x1*5.968258e-001 $
;                + x2*(-6.272039e-002) + x3*7.838866e-001 + x4*3.086514e-001 + x5*1.857262e-001 + x6*(-4.725408e-001) + x7*1.265467e+000 + x8*1.884844e-001 $
;                + x9*(-1.082419e+000) + x10*9.389020e-003 + x11*1.289086e+000 + 1.978971e-001)))-1)*1.037771e+000 + (2/(1+exp(-2*(x1*(-6.787177e-001) + x2*1.361141e+000 $
;                + x3*4.242464e-001 + x4*1.198405e+000 + x5*(-5.632985e-001) + x6*1.061509e+000 + x7*4.075891e-001 + x8*7.144099e-001 + x9*6.250744e-001 $
;                 + x10*(-2.498975e-001) + x11*1.350367e+000 + 1.150136e-001)))-1)*(-4.385884e-001) + (2/(1+exp(-2*(x1*4.578407e-001 + x2*(-5.847067e-001) $
;                 + x3*(-2.917161e-002) + x4*2.628517e-001 + x5*(-3.792198e-001) + x6*4.973659e-001 + x7*(-5.139485e-001) + x8*1.184277e-002 + x9*1.015795e+000 $
;                 + x10*2.645837e-003 + x11*(-1.766867e+000) -1.419026e-001)))-1)*1.860633e-001 + (2/(1+exp(-2*(x1*(-1.352320e+000) + x2*(-1.648298e-001) $
;                 + x3*(-2.254672e-001) + x4*1.440311e+000 + x5*8.462713e-001 + x6*1.116300e-001 + x7*(-8.606460e-001) + x8*(-9.814566e-001) + x9*6.318561e-002 $
;                 + x10*(-2.193766e-001) + x11*1.632348e-001 -5.647791e-001)))-1)*4.439840e-001 + (2/(1+exp(-2*(x1*1.140968e+000 + x2*1.314574e+000 + x3*(-8.578971e-001) $
;                 + x4*1.531032e+000 + x5*1.332486e+000 + x6*(-3.567295e-001) + x7*5.739287e-002 + x8*5.872537e-001 + x9*1.270036e-001 + x10*3.409906e-001 $
;                 + x11*(-1.766940e-001) -6.353121e-003)))-1)*(-2.408835e-001) + (2/(1+exp(-2*(x1*(-5.244430e-001) + x2*(-8.343656e-001) + x3*5.203498e-001 $
;                 + x4*(-9.925469e-001) + x5*1.304630e+000 + x6*2.809569e-001 + x7*(-1.689703e-002) + x8*8.216344e-001 + x9*(-2.522851e-001) + x10*(-1.658768e-001) $
;                 + x11*(-1.961988e+000) -1.776180e-001)))-1)*3.021488e-001 + (2/(1+exp(-2*(x1*3.279616e-001 + x2*(-4.375002e-001) + x3*4.387803e-002 + x4*(-5.501400e-001) $
;                 + x5*(-8.565877e-001) + x6*4.391854e-002 + x7*6.908597e-002 + x8*6.846813e-001 + x9*2.778449e-001 + x10*(-5.143424e-001) + x11*(-8.861342e-001) $
;                 + 6.886770e-001)))-1)*(-1.132866e-001) + (2/(1+exp(-2*(x1*3.334734e-001 + x2*(-1.996905e+000) + x3*(-6.054301e-001) + x4*4.512284e-001 $
;                 + x5*(-1.499837e+000) + x6*(-1.759464e-001) + x7*2.002679e-001 + x8*2.484810e-001 + x9*(-6.863660e-002) + x10*2.007556e-001 $
;                 + x11*(-1.232336e+000) -7.699519e-001)))-1)*(-6.067062e-001) -3.324810e-001)))-1)*7.603098e-001 + (2/(1+exp(-2*((2/(1+exp(-2*(x1*(-2.037026e+000) $
;                 + x2*2.307325e-001 + x3*(-1.049685e-001) + x4*(-7.108978e-001) + x5*1.314674e+000 + x6*(-1.656470e-002) + x7*(-3.499404e-001) + x8*(-7.373863e-003) $
;                 + x9*(-1.501734e-001) + x10*(-3.302989e-002) + x11*(-9.501147e-001) -1.513720e+000)))-1)*(-6.334428e-001) + (2/(1+exp(-2*(x1*2.998261e-001 $
;                 + x2*9.620630e-001 + x3*7.863338e-002 + x4*9.983103e-001 + x5*(-1.488616e-001) + x6*(-1.801891e-001) + x7*7.694381e-001 + x8*6.913113e-001 $
;                 + x9*(-1.182937e-001) + x10*1.125942e-001 + x11*1.235984e-001 + 2.816774e-001)))-1)*2.521783e-001 + (2/(1+exp(-2*(x1*(-2.319732e+000) $
;                 + x2*(-5.777909e-001) + x3*8.022373e-001 + x4*7.956962e-001 + x5*(-6.773465e-001) + x6*2.122697e-001 + x7*(-2.300928e-001) + x8*(-2.237993e-001) $
;                 + x9*(-2.050171e-001) + x10*(-1.808916e-001) + x11*(-2.724216e-001) + 1.010599e+000)))-1)*6.555543e-001 + (2/(1+exp(-2*(x1*5.968258e-001 $
;                 + x2*(-6.272039e-002) + x3*7.838866e-001 + x4*3.086514e-001 + x5*1.857262e-001 + x6*(-4.725408e-001) + x7*1.265467e+000 + x8*1.884844e-001 $
;                 + x9*(-1.082419e+000) + x10*9.389020e-003 + x11*1.289086e+000 + 1.978971e-001)))-1)*(-6.207052e-001) + (2/(1+exp(-2*(x1*(-6.787177e-001) $
;                 + x2*1.361141e+000 + x3*4.242464e-001 + x4*1.198405e+000 + x5*(-5.632985e-001) + x6*1.061509e+000 + x7*4.075891e-001 + x8*7.144099e-001 $
;                 + x9*6.250744e-001 + x10*(-2.498975e-001) + x11*1.350367e+000 + 1.150136e-001)))-1)*9.142209e-002 + (2/(1+exp(-2*(x1*4.578407e-001 + x2*(-5.847067e-001) $
;                 + x3*(-2.917161e-002) + x4*2.628517e-001 + x5*(-3.792198e-001) + x6*4.973659e-001 + x7*(-5.139485e-001) + x8*1.184277e-002 + x9*1.015795e+000 $
;                 + x10*2.645837e-003 + x11*(-1.766867e+000) -1.419026e-001)))-1)*(-1.099973e+000) + (2/(1+exp(-2*(x1*(-1.352320e+000) + x2*(-1.648298e-001) $
;                 + x3*(-2.254672e-001) + x4*1.440311e+000 + x5*8.462713e-001 + x6*1.116300e-001 + x7*(-8.606460e-001) + x8*(-9.814566e-001) + x9*6.318561e-002 $
;                 + x10*(-2.193766e-001) + x11*1.632348e-001 -5.647791e-001)))-1)*(-1.428725e-001) + (2/(1+exp(-2*(x1*1.140968e+000 + x2*1.314574e+000 + x3*(-8.578971e-001) $
;                 + x4*1.531032e+000 + x5*1.332486e+000 + x6*(-3.567295e-001) + x7*5.739287e-002 + x8*5.872537e-001 + x9*1.270036e-001 + x10*3.409906e-001 $
;                 + x11*(-1.766940e-001) -6.353121e-003)))-1)*(-7.242795e-002) + (2/(1+exp(-2*(x1*(-5.244430e-001) + x2*(-8.343656e-001) + x3*5.203498e-001 $
;                 + x4*(-9.925469e-001) + x5*1.304630e+000 + x6*2.809569e-001 + x7*(-1.689703e-002) + x8*8.216344e-001 + x9*(-2.522851e-001) + x10*(-1.658768e-001) $
;                 + x11*(-1.961988e+000) -1.776180e-001)))-1)*5.429183e-001 + (2/(1+exp(-2*(x1*3.279616e-001 + x2*(-4.375002e-001) + x3*4.387803e-002 + x4*(-5.501400e-001) $
;                 + x5*(-8.565877e-001) + x6*4.391854e-002 + x7*6.908597e-002 + x8*6.846813e-001 + x9*2.778449e-001 + x10*(-5.143424e-001) + x11*(-8.861342e-001) $
;                 + 6.886770e-001)))-1)*(-5.508238e-001) + (2/(1+exp(-2*(x1*3.334734e-001 + x2*(-1.996905e+000) + x3*(-6.054301e-001) + x4*4.512284e-001 $
;                 + x5*(-1.499837e+000) + x6*(-1.759464e-001) + x7*2.002679e-001 + x8*2.484810e-001 + x9*(-6.863660e-002) + x10*2.007556e-001 + x11*(-1.232336e+000) $
;                 -7.699519e-001)))-1)*(-3.245151e-001) -8.814751e-001)))-1)*1.598665e+000 + (2/(1+exp(-2*((2/(1+exp(-2*(x1*(-2.037026e+000) + x2*2.307325e-001 $
;                 + x3*(-1.049685e-001) + x4*(-7.108978e-001) + x5*1.314674e+000 + x6*(-1.656470e-002) + x7*(-3.499404e-001) + x8*(-7.373863e-003) + x9*(-1.501734e-001) $
;                 + x10*(-3.302989e-002) + x11*(-9.501147e-001) -1.513720e+000)))-1)*3.207442e-001 + (2/(1+exp(-2*(x1*2.998261e-001 + x2*9.620630e-001 + x3*7.863338e-002 $
;                 + x4*9.983103e-001 + x5*(-1.488616e-001) + x6*(-1.801891e-001) + x7*7.694381e-001 + x8*6.913113e-001 + x9*(-1.182937e-001) + x10*1.125942e-001 $
;                  + x11*1.235984e-001 + 2.816774e-001)))-1)*(-5.044782e-001) + (2/(1+exp(-2*(x1*(-2.319732e+000) + x2*(-5.777909e-001) + x3*8.022373e-001 $
;                  + x4*7.956962e-001 + x5*(-6.773465e-001) + x6*2.122697e-001 + x7*(-2.300928e-001) + x8*(-2.237993e-001) + x9*(-2.050171e-001) + x10*(-1.808916e-001) $
;                  + x11*(-2.724216e-001) + 1.010599e+000)))-1)*7.366298e-001 + (2/(1+exp(-2*(x1*5.968258e-001 + x2*(-6.272039e-002) + x3*7.838866e-001 + x4*3.086514e-001 $
;                  + x5*1.857262e-001 + x6*(-4.725408e-001) + x7*1.265467e+000 + x8*1.884844e-001 + x9*(-1.082419e+000) + x10*9.389020e-003 + x11*1.289086e+000 $
;                  + 1.978971e-001)))-1)*(-7.282893e-002) + (2/(1+exp(-2*(x1*(-6.787177e-001) + x2*1.361141e+000 + x3*4.242464e-001 + x4*1.198405e+000 + x5*(-5.632985e-001) $
;                  + x6*1.061509e+000 + x7*4.075891e-001 + x8*7.144099e-001 + x9*6.250744e-001 + x10*(-2.498975e-001) + x11*1.350367e+000 + 1.150136e-001)))-1)*4.745152e-001 $
;                  + (2/(1+exp(-2*(x1*4.578407e-001 + x2*(-5.847067e-001) + x3*(-2.917161e-002) + x4*2.628517e-001 + x5*(-3.792198e-001) + x6*4.973659e-001 $
;                  + x7*(-5.139485e-001) + x8*1.184277e-002 + x9*1.015795e+000 + x10*2.645837e-003 + x11*(-1.766867e+000) -1.419026e-001)))-1)*5.127433e-001 $
;                  + (2/(1+exp(-2*(x1*(-1.352320e+000) + x2*(-1.648298e-001) + x3*(-2.254672e-001) + x4*1.440311e+000 + x5*8.462713e-001 + x6*1.116300e-001 $
;                  + x7*(-8.606460e-001) + x8*(-9.814566e-001) + x9*6.318561e-002 + x10*(-2.193766e-001) + x11*1.632348e-001 -5.647791e-001)))-1)*(-2.021653e-001) $
;                  + (2/(1+exp(-2*(x1*1.140968e+000 + x2*1.314574e+000 + x3*(-8.578971e-001) + x4*1.531032e+000 + x5*1.332486e+000 + x6*(-3.567295e-001) + x7*5.739287e-002 $
;                  + x8*5.872537e-001 + x9*1.270036e-001 + x10*3.409906e-001 + x11*(-1.766940e-001) -6.353121e-003)))-1)*8.963688e-001 + (2/(1+exp(-2*(x1*(-5.244430e-001) $
;                  + x2*(-8.343656e-001) + x3*5.203498e-001 + x4*(-9.925469e-001) + x5*1.304630e+000 + x6*2.809569e-001 + x7*(-1.689703e-002) + x8*8.216344e-001 $
;                  + x9*(-2.522851e-001) + x10*(-1.658768e-001) + x11*(-1.961988e+000) -1.776180e-001)))-1)*6.791688e-001 + (2/(1+exp(-2*(x1*3.279616e-001 $
;                  + x2*(-4.375002e-001) + x3*4.387803e-002 + x4*(-5.501400e-001) + x5*(-8.565877e-001) + x6*4.391854e-002 + x7*6.908597e-002 + x8*6.846813e-001 $
;                  + x9*2.778449e-001 + x10*(-5.143424e-001) + x11*(-8.861342e-001) + 6.886770e-001)))-1)*(-2.926377e-001) + (2/(1+exp(-2*(x1*3.334734e-001 $
;                  + x2*(-1.996905e+000) + x3*(-6.054301e-001) + x4*4.512284e-001 + x5*(-1.499837e+000) + x6*(-1.759464e-001) + x7*2.002679e-001 + x8*2.484810e-001 $
;                  + x9*(-6.863660e-002) + x10*2.007556e-001 + x11*(-1.232336e+000) -7.699519e-001)))-1)*1.880127e-001 -3.431361e-001)))-1)*(-1.219563e+000) $
;                  + (2/(1+exp(-2*((2/(1+exp(-2*(x1*(-2.037026e+000) + x2*2.307325e-001 + x3*(-1.049685e-001) + x4*(-7.108978e-001) + x5*1.314674e+000 + x6*(-1.656470e-002) $
;                  + x7*(-3.499404e-001) + x8*(-7.373863e-003) + x9*(-1.501734e-001) + x10*(-3.302989e-002) + x11*(-9.501147e-001) -1.513720e+000)))-1)*5.118542e-001 $
;                  + (2/(1+exp(-2*(x1*2.998261e-001 + x2*9.620630e-001 + x3*7.863338e-002 + x4*9.983103e-001 + x5*(-1.488616e-001) + x6*(-1.801891e-001) + x7*7.694381e-001 $
;                  + x8*6.913113e-001 + x9*(-1.182937e-001) + x10*1.125942e-001 + x11*1.235984e-001 + 2.816774e-001)))-1)*(-2.512943e-001) + (2/(1+exp(-2*(x1*(-2.319732e+000) $
;                  + x2*(-5.777909e-001) + x3*8.022373e-001 + x4*7.956962e-001 + x5*(-6.773465e-001) + x6*2.122697e-001 + x7*(-2.300928e-001) + x8*(-2.237993e-001) $
;                  + x9*(-2.050171e-001) + x10*(-1.808916e-001) + x11*(-2.724216e-001) + 1.010599e+000)))-1)*3.199709e-001 + (2/(1+exp(-2*(x1*5.968258e-001 $
;                  + x2*(-6.272039e-002) + x3*7.838866e-001 + x4*3.086514e-001 + x5*1.857262e-001 + x6*(-4.725408e-001) + x7*1.265467e+000 + x8*1.884844e-001 $
;                  + x9*(-1.082419e+000) + x10*9.389020e-003 + x11*1.289086e+000 + 1.978971e-001)))-1)*(-6.501619e-001) + (2/(1+exp(-2*(x1*(-6.787177e-001) $
;                  + x2*1.361141e+000 + x3*4.242464e-001 + x4*1.198405e+000 + x5*(-5.632985e-001) + x6*1.061509e+000 + x7*4.075891e-001 + x8*7.144099e-001 $
;                  + x9*6.250744e-001 + x10*(-2.498975e-001) + x11*1.350367e+000 + 1.150136e-001)))-1)*6.261846e-001 + (2/(1+exp(-2*(x1*4.578407e-001 + x2*(-5.847067e-001) $
;                  + x3*(-2.917161e-002) + x4*2.628517e-001 + x5*(-3.792198e-001) + x6*4.973659e-001 + x7*(-5.139485e-001) + x8*1.184277e-002 + x9*1.015795e+000 $
;                  + x10*2.645837e-003 + x11*(-1.766867e+000) -1.419026e-001)))-1)*1.369172e+000 + (2/(1+exp(-2*(x1*(-1.352320e+000) + x2*(-1.648298e-001) $
;                  + x3*(-2.254672e-001) + x4*1.440311e+000 + x5*8.462713e-001 + x6*1.116300e-001 + x7*(-8.606460e-001) + x8*(-9.814566e-001) + x9*6.318561e-002 $
;                  + x10*(-2.193766e-001) + x11*1.632348e-001 -5.647791e-001)))-1)*5.221593e-001 + (2/(1+exp(-2*(x1*1.140968e+000 + x2*1.314574e+000 + x3*(-8.578971e-001) $
;                  + x4*1.531032e+000 + x5*1.332486e+000 + x6*(-3.567295e-001) + x7*5.739287e-002 + x8*5.872537e-001 + x9*1.270036e-001 + x10*3.409906e-001 $
;                  + x11*(-1.766940e-001) -6.353121e-003)))-1)*(-3.903183e-001) + (2/(1+exp(-2*(x1*(-5.244430e-001) + x2*(-8.343656e-001) + x3*5.203498e-001 $
;                  + x4*(-9.925469e-001) + x5*1.304630e+000 + x6*2.809569e-001 + x7*(-1.689703e-002) + x8*8.216344e-001 + x9*(-2.522851e-001) + x10*(-1.658768e-001) $
;                  + x11*(-1.961988e+000) -1.776180e-001)))-1)*2.224030e-001 + (2/(1+exp(-2*(x1*3.279616e-001 + x2*(-4.375002e-001) + x3*4.387803e-002 + x4*(-5.501400e-001) $
;                  + x5*(-8.565877e-001) + x6*4.391854e-002 + x7*6.908597e-002 + x8*6.846813e-001 + x9*2.778449e-001 + x10*(-5.143424e-001) + x11*(-8.861342e-001) $
;                  + 6.886770e-001)))-1)*(-7.902049e-001) + (2/(1+exp(-2*(x1*3.334734e-001 + x2*(-1.996905e+000) + x3*(-6.054301e-001) + x4*4.512284e-001 $
;                  + x5*(-1.499837e+000) + x6*(-1.759464e-001) + x7*2.002679e-001 + x8*2.484810e-001 + x9*(-6.863660e-002) + x10*2.007556e-001 + x11*(-1.232336e+000) $
;                  -7.699519e-001)))-1)*1.598682e+000 + 9.380549e-001)))-1)*1.049768e+000 + (2/(1+exp(-2*((2/(1+exp(-2*(x1*(-2.037026e+000) + x2*2.307325e-001 $
;                  + x3*(-1.049685e-001) + x4*(-7.108978e-001) + x5*1.314674e+000 + x6*(-1.656470e-002) + x7*(-3.499404e-001) + x8*(-7.373863e-003) + x9*(-1.501734e-001) $
;                  + x10*(-3.302989e-002) + x11*(-9.501147e-001) -1.513720e+000)))-1)*(-1.880121e-001) + (2/(1+exp(-2*(x1*2.998261e-001 + x2*9.620630e-001 $
;                  + x3*7.863338e-002 + x4*9.983103e-001 + x5*(-1.488616e-001) + x6*(-1.801891e-001) + x7*7.694381e-001 + x8*6.913113e-001 + x9*(-1.182937e-001) $
;                  + x10*1.125942e-001 + x11*1.235984e-001 + 2.816774e-001)))-1)*(-2.677851e-001) + (2/(1+exp(-2*(x1*(-2.319732e+000) + x2*(-5.777909e-001) $
;                  + x3*8.022373e-001 + x4*7.956962e-001 + x5*(-6.773465e-001) + x6*2.122697e-001 + x7*(-2.300928e-001) + x8*(-2.237993e-001) + x9*(-2.050171e-001) $
;                  + x10*(-1.808916e-001) + x11*(-2.724216e-001) + 1.010599e+000)))-1)*3.861706e-002 + (2/(1+exp(-2*(x1*5.968258e-001 + x2*(-6.272039e-002) $
;                  + x3*7.838866e-001 + x4*3.086514e-001 + x5*1.857262e-001 + x6*(-4.725408e-001) + x7*1.265467e+000 + x8*1.884844e-001 + x9*(-1.082419e+000) $
;                  + x10*9.389020e-003 + x11*1.289086e+000 + 1.978971e-001)))-1)*3.614585e-002 + (2/(1+exp(-2*(x1*(-6.787177e-001) + x2*1.361141e+000 + x3*4.242464e-001 $
;                  + x4*1.198405e+000 + x5*(-5.632985e-001) + x6*1.061509e+000 + x7*4.075891e-001 + x8*7.144099e-001 + x9*6.250744e-001 + x10*(-2.498975e-001) $
;                  + x11*1.350367e+000 + 1.150136e-001)))-1)*1.241419e-001 + (2/(1+exp(-2*(x1*4.578407e-001 + x2*(-5.847067e-001) + x3*(-2.917161e-002) + x4*2.628517e-001 $
;                  + x5*(-3.792198e-001) + x6*4.973659e-001 + x7*(-5.139485e-001) + x8*1.184277e-002 + x9*1.015795e+000 + x10*2.645837e-003 $
;                  + x11*(-1.766867e+000) -1.419026e-001)))-1)*2.560898e-001 + (2/(1+exp(-2*(x1*(-1.352320e+000) + x2*(-1.648298e-001) + x3*(-2.254672e-001) $
;                  + x4*1.440311e+000 + x5*8.462713e-001 + x6*1.116300e-001 + x7*(-8.606460e-001) + x8*(-9.814566e-001) + x9*6.318561e-002 + x10*(-2.193766e-001) $
;                  + x11*1.632348e-001 -5.647791e-001)))-1)*(-4.046317e-002) + (2/(1+exp(-2*(x1*1.140968e+000 + x2*1.314574e+000 + x3*(-8.578971e-001) + x4*1.531032e+000 $
;                  + x5*1.332486e+000 + x6*(-3.567295e-001) + x7*5.739287e-002 + x8*5.872537e-001 + x9*1.270036e-001 + x10*3.409906e-001 $
;                  + x11*(-1.766940e-001) -6.353121e-003)))-1)*7.312453e-002 + (2/(1+exp(-2*(x1*(-5.244430e-001) + x2*(-8.343656e-001) + x3*5.203498e-001 $
;                  + x4*(-9.925469e-001) + x5*1.304630e+000 + x6*2.809569e-001 + x7*(-1.689703e-002) + x8*8.216344e-001 + x9*(-2.522851e-001) + x10*(-1.658768e-001) $
;                  + x11*(-1.961988e+000) -1.776180e-001)))-1)*6.041519e-002 + (2/(1+exp(-2*(x1*3.279616e-001 + x2*(-4.375002e-001) + x3*4.387803e-002 + x4*(-5.501400e-001) $
;                  + x5*(-8.565877e-001) + x6*4.391854e-002 + x7*6.908597e-002 + x8*6.846813e-001 + x9*2.778449e-001 + x10*(-5.143424e-001) + x11*(-8.861342e-001) $
;                  + 6.886770e-001)))-1)*(-2.157864e-001) + (2/(1+exp(-2*(x1*3.334734e-001 + x2*(-1.996905e+000) + x3*(-6.054301e-001) + x4*4.512284e-001 $
;                  + x5*(-1.499837e+000) + x6*(-1.759464e-001) + x7*2.002679e-001 + x8*2.484810e-001 + x9*(-6.863660e-002) + x10*2.007556e-001 + x11*(-1.232336e+000) $
;                  -7.699519e-001)))-1)*(-5.760475e-002) + 1.105083e-001)))-1)*(-4.513790e-001) + (2/(1+exp(-2*((2/(1+exp(-2*(x1*(-2.037026e+000) + x2*2.307325e-001 $
;                  + x3*(-1.049685e-001) + x4*(-7.108978e-001) + x5*1.314674e+000 + x6*(-1.656470e-002) + x7*(-3.499404e-001) + x8*(-7.373863e-003) + x9*(-1.501734e-001) $
;                  + x10*(-3.302989e-002) + x11*(-9.501147e-001) -1.513720e+000)))-1)*(-6.044759e-001) + (2/(1+exp(-2*(x1*2.998261e-001 + x2*9.620630e-001 $
;                  + x3*7.863338e-002 + x4*9.983103e-001 + x5*(-1.488616e-001) + x6*(-1.801891e-001) + x7*7.694381e-001 + x8*6.913113e-001 + x9*(-1.182937e-001) $
;                  + x10*1.125942e-001 + x11*1.235984e-001 + 2.816774e-001)))-1)*(-6.421610e-001) + (2/(1+exp(-2*(x1*(-2.319732e+000) + x2*(-5.777909e-001) $
;                  + x3*8.022373e-001 + x4*7.956962e-001 + x5*(-6.773465e-001) + x6*2.122697e-001 + x7*(-2.300928e-001) + x8*(-2.237993e-001) + x9*(-2.050171e-001) $
;                  + x10*(-1.808916e-001) + x11*(-2.724216e-001) + 1.010599e+000)))-1)*3.111430e-001 + (2/(1+exp(-2*(x1*5.968258e-001 + x2*(-6.272039e-002) $
;                  + x3*7.838866e-001 + x4*3.086514e-001 + x5*1.857262e-001 + x6*(-4.725408e-001) + x7*1.265467e+000 + x8*1.884844e-001 + x9*(-1.082419e+000) $
;                  + x10*9.389020e-003 + x11*1.289086e+000 + 1.978971e-001)))-1)*(-1.842118e-001) + (2/(1+exp(-2*(x1*(-6.787177e-001) + x2*1.361141e+000 + x3*4.242464e-001 $
;                  + x4*1.198405e+000 + x5*(-5.632985e-001) + x6*1.061509e+000 + x7*4.075891e-001 + x8*7.144099e-001 + x9*6.250744e-001 + x10*(-2.498975e-001) $
;                  + x11*1.350367e+000 + 1.150136e-001)))-1)*(-5.915544e-002) + (2/(1+exp(-2*(x1*4.578407e-001 + x2*(-5.847067e-001) + x3*(-2.917161e-002) $
;                  + x4*2.628517e-001 + x5*(-3.792198e-001) + x6*4.973659e-001 + x7*(-5.139485e-001) + x8*1.184277e-002 + x9*1.015795e+000 + x10*2.645837e-003 $
;                  + x11*(-1.766867e+000) -1.419026e-001)))-1)*5.637801e-001 + (2/(1+exp(-2*(x1*(-1.352320e+000) + x2*(-1.648298e-001) + x3*(-2.254672e-001) $
;                  + x4*1.440311e+000 + x5*8.462713e-001 + x6*1.116300e-001 + x7*(-8.606460e-001) + x8*(-9.814566e-001) + x9*6.318561e-002 + x10*(-2.193766e-001) $
;                  + x11*1.632348e-001 -5.647791e-001)))-1)*4.883599e-001 + (2/(1+exp(-2*(x1*1.140968e+000 + x2*1.314574e+000 + x3*(-8.578971e-001) + x4*1.531032e+000 $
;                  + x5*1.332486e+000 + x6*(-3.567295e-001) + x7*5.739287e-002 + x8*5.872537e-001 + x9*1.270036e-001 + x10*3.409906e-001 + x11*(-1.766940e-001) $
;                  -6.353121e-003)))-1)*1.317464e-001 + (2/(1+exp(-2*(x1*(-5.244430e-001) + x2*(-8.343656e-001) + x3*5.203498e-001 + x4*(-9.925469e-001) + x5*1.304630e+000 $
;                  + x6*2.809569e-001 + x7*(-1.689703e-002) + x8*8.216344e-001 + x9*(-2.522851e-001) + x10*(-1.658768e-001) $
;                  + x11*(-1.961988e+000) -1.776180e-001)))-1)*(-4.412989e-001) + (2/(1+exp(-2*(x1*3.279616e-001 + x2*(-4.375002e-001) + x3*4.387803e-002 $
;                  + x4*(-5.501400e-001) + x5*(-8.565877e-001) + x6*4.391854e-002 + x7*6.908597e-002 + x8*6.846813e-001 + x9*2.778449e-001 + x10*(-5.143424e-001) $
;                  + x11*(-8.861342e-001) + 6.886770e-001)))-1)*7.267947e-002 + (2/(1+exp(-2*(x1*3.334734e-001 + x2*(-1.996905e+000) + x3*(-6.054301e-001) $
;                  + x4*4.512284e-001 + x5*(-1.499837e+000) + x6*(-1.759464e-001) + x7*2.002679e-001 + x8*2.484810e-001 + x9*(-6.863660e-002) + x10*2.007556e-001 $
;                  + x11*(-1.232336e+000) -7.699519e-001)))-1)*7.324756e-002 -4.593825e-001)))-1)*7.365419e-001 + (2/(1+exp(-2*((2/(1+exp(-2*(x1*(-2.037026e+000) $
;                  + x2*2.307325e-001 + x3*(-1.049685e-001) + x4*(-7.108978e-001) + x5*1.314674e+000 + x6*(-1.656470e-002) + x7*(-3.499404e-001) + x8*(-7.373863e-003) $
;                  + x9*(-1.501734e-001) + x10*(-3.302989e-002) + x11*(-9.501147e-001) -1.513720e+000)))-1)*(-4.940444e-001) + (2/(1+exp(-2*(x1*2.998261e-001 $
;                  + x2*9.620630e-001 + x3*7.863338e-002 + x4*9.983103e-001 + x5*(-1.488616e-001) + x6*(-1.801891e-001) + x7*7.694381e-001 + x8*6.913113e-001 $
;                  + x9*(-1.182937e-001) + x10*1.125942e-001 + x11*1.235984e-001 + 2.816774e-001)))-1)*(-2.993045e-003) + (2/(1+exp(-2*(x1*(-2.319732e+000) $
;                  + x2*(-5.777909e-001) + x3*8.022373e-001 + x4*7.956962e-001 + x5*(-6.773465e-001) + x6*2.122697e-001 + x7*(-2.300928e-001) + x8*(-2.237993e-001) $
;                  + x9*(-2.050171e-001) + x10*(-1.808916e-001) + x11*(-2.724216e-001) + 1.010599e+000)))-1)*(-5.720163e-001) + (2/(1+exp(-2*(x1*5.968258e-001 $
;                  + x2*(-6.272039e-002) + x3*7.838866e-001 + x4*3.086514e-001 + x5*1.857262e-001 + x6*(-4.725408e-001) + x7*1.265467e+000 + x8*1.884844e-001 $
;                  + x9*(-1.082419e+000) + x10*9.389020e-003 + x11*1.289086e+000 + 1.978971e-001)))-1)*(-2.467590e-001) + (2/(1+exp(-2*(x1*(-6.787177e-001) $
;                  + x2*1.361141e+000 + x3*4.242464e-001 + x4*1.198405e+000 + x5*(-5.632985e-001) + x6*1.061509e+000 + x7*4.075891e-001 + x8*7.144099e-001 $
;                  + x9*6.250744e-001 + x10*(-2.498975e-001) + x11*1.350367e+000 + 1.150136e-001)))-1)*6.442344e-001 + (2/(1+exp(-2*(x1*4.578407e-001 $
;                  + x2*(-5.847067e-001) + x3*(-2.917161e-002) + x4*2.628517e-001 + x5*(-3.792198e-001) + x6*4.973659e-001 + x7*(-5.139485e-001) + x8*1.184277e-002 $
;                  + x9*1.015795e+000 + x10*2.645837e-003 + x11*(-1.766867e+000) -1.419026e-001)))-1)*(-1.373837e+000) + (2/(1+exp(-2*(x1*(-1.352320e+000) $
;                  + x2*(-1.648298e-001) + x3*(-2.254672e-001) + x4*1.440311e+000 + x5*8.462713e-001 + x6*1.116300e-001 + x7*(-8.606460e-001) + x8*(-9.814566e-001) $
;                  + x9*6.318561e-002 + x10*(-2.193766e-001) + x11*1.632348e-001 -5.647791e-001)))-1)*1.176952e+000 + (2/(1+exp(-2*(x1*1.140968e+000 + x2*1.314574e+000 $
;                  + x3*(-8.578971e-001) + x4*1.531032e+000 + x5*1.332486e+000 + x6*(-3.567295e-001) + x7*5.739287e-002 + x8*5.872537e-001 + x9*1.270036e-001 $
;                  + x10*3.409906e-001 + x11*(-1.766940e-001) -6.353121e-003)))-1)*6.747017e-001 + (2/(1+exp(-2*(x1*(-5.244430e-001) + x2*(-8.343656e-001) $
;                  + x3*5.203498e-001 + x4*(-9.925469e-001) + x5*1.304630e+000 + x6*2.809569e-001 + x7*(-1.689703e-002) + x8*8.216344e-001 + x9*(-2.522851e-001) $
;                  + x10*(-1.658768e-001) + x11*(-1.961988e+000) -1.776180e-001)))-1)*1.257503e+000 + (2/(1+exp(-2*(x1*3.279616e-001 + x2*(-4.375002e-001) $
;                  + x3*4.387803e-002 + x4*(-5.501400e-001) + x5*(-8.565877e-001) + x6*4.391854e-002 + x7*6.908597e-002 + x8*6.846813e-001 + x9*2.778449e-001 $
;                  + x10*(-5.143424e-001) + x11*(-8.861342e-001) + 6.886770e-001)))-1)*(-8.590711e-001) + (2/(1+exp(-2*(x1*3.334734e-001 + x2*(-1.996905e+000) $
;                  + x3*(-6.054301e-001) + x4*4.512284e-001 + x5*(-1.499837e+000) + x6*(-1.759464e-001) + x7*2.002679e-001 + x8*2.484810e-001 + x9*(-6.863660e-002) $
;                  + x10*2.007556e-001 + x11*(-1.232336e+000) -7.699519e-001)))-1)*(-4.929973e-001) -3.384139e-001)))-1)*(-1.693944e+000) + (2/(1+exp(-2*((2/(1+exp(-2*(x1*(-2.037026e+000) $
;                  + x2*2.307325e-001 + x3*(-1.049685e-001) + x4*(-7.108978e-001) + x5*1.314674e+000 + x6*(-1.656470e-002) + x7*(-3.499404e-001) + x8*(-7.373863e-003) $
;                  + x9*(-1.501734e-001) + x10*(-3.302989e-002) + x11*(-9.501147e-001) -1.513720e+000)))-1)*1.197201e+000 + (2/(1+exp(-2*(x1*2.998261e-001 $
;                  + x2*9.620630e-001 + x3*7.863338e-002 + x4*9.983103e-001 + x5*(-1.488616e-001) + x6*(-1.801891e-001) + x7*7.694381e-001 + x8*6.913113e-001 $
;                  + x9*(-1.182937e-001) + x10*1.125942e-001 + x11*1.235984e-001 + 2.816774e-001)))-1)*(-3.884438e-001) + (2/(1+exp(-2*(x1*(-2.319732e+000) $
;                  + x2*(-5.777909e-001) + x3*8.022373e-001 + x4*7.956962e-001 + x5*(-6.773465e-001) + x6*2.122697e-001 + x7*(-2.300928e-001) + x8*(-2.237993e-001) $
;                  + x9*(-2.050171e-001) + x10*(-1.808916e-001) + x11*(-2.724216e-001) + 1.010599e+000)))-1)*(-1.229108e+000) + (2/(1+exp(-2*(x1*5.968258e-001 $
;                  + x2*(-6.272039e-002) + x3*7.838866e-001 + x4*3.086514e-001 + x5*1.857262e-001 + x6*(-4.725408e-001) + x7*1.265467e+000 + x8*1.884844e-001 $
;                  + x9*(-1.082419e+000) + x10*9.389020e-003 + x11*1.289086e+000 + 1.978971e-001)))-1)*4.740264e-001 + (2/(1+exp(-2*(x1*(-6.787177e-001) + x2*1.361141e+000 $
;                  + x3*4.242464e-001 + x4*1.198405e+000 + x5*(-5.632985e-001) + x6*1.061509e+000 + x7*4.075891e-001 + x8*7.144099e-001 + x9*6.250744e-001 $
;                  + x10*(-2.498975e-001) + x11*1.350367e+000 + 1.150136e-001)))-1)*1.179254e+000 + (2/(1+exp(-2*(x1*4.578407e-001 + x2*(-5.847067e-001) $
;                  + x3*(-2.917161e-002) + x4*2.628517e-001 + x5*(-3.792198e-001) + x6*4.973659e-001 + x7*(-5.139485e-001) + x8*1.184277e-002 + x9*1.015795e+000 $
;                  + x10*2.645837e-003 + x11*(-1.766867e+000) -1.419026e-001)))-1)*(-1.204798e+000) + (2/(1+exp(-2*(x1*(-1.352320e+000) + x2*(-1.648298e-001) $
;                  + x3*(-2.254672e-001) + x4*1.440311e+000 + x5*8.462713e-001 + x6*1.116300e-001 + x7*(-8.606460e-001) + x8*(-9.814566e-001) + x9*6.318561e-002 $
;                  + x10*(-2.193766e-001) + x11*1.632348e-001 -5.647791e-001)))-1)*5.096661e-001 + (2/(1+exp(-2*(x1*1.140968e+000 + x2*1.314574e+000 + x3*(-8.578971e-001) $
;                  + x4*1.531032e+000 + x5*1.332486e+000 + x6*(-3.567295e-001) + x7*5.739287e-002 + x8*5.872537e-001 + x9*1.270036e-001 + x10*3.409906e-001 $
;                  + x11*(-1.766940e-001) -6.353121e-003)))-1)*8.491021e-001 + (2/(1+exp(-2*(x1*(-5.244430e-001) + x2*(-8.343656e-001) + x3*5.203498e-001 $
;                  + x4*(-9.925469e-001) + x5*1.304630e+000 + x6*2.809569e-001 + x7*(-1.689703e-002) + x8*8.216344e-001 + x9*(-2.522851e-001) + x10*(-1.658768e-001) $
;                   + x11*(-1.961988e+000) -1.776180e-001)))-1)*6.116618e-001 + (2/(1+exp(-2*(x1*3.279616e-001 + x2*(-4.375002e-001) + x3*4.387803e-002 $
;                   + x4*(-5.501400e-001) + x5*(-8.565877e-001) + x6*4.391854e-002 + x7*6.908597e-002 + x8*6.846813e-001 + x9*2.778449e-001 + x10*(-5.143424e-001) $
;                   + x11*(-8.861342e-001) + 6.886770e-001)))-1)*(-7.844832e-001) + (2/(1+exp(-2*(x1*3.334734e-001 + x2*(-1.996905e+000) + x3*(-6.054301e-001) $
;                   + x4*4.512284e-001 + x5*(-1.499837e+000) + x6*(-1.759464e-001) + x7*2.002679e-001 + x8*2.484810e-001 + x9*(-6.863660e-002) + x10*2.007556e-001 $
;                   + x11*(-1.232336e+000) -7.699519e-001)))-1)*(-1.829968e-001) + 6.021694e-001)))-1)*1.106853e+000 + (2/(1+exp(-2*((2/(1+exp(-2*(x1*(-2.037026e+000) $
;                   + x2*2.307325e-001 + x3*(-1.049685e-001) + x4*(-7.108978e-001) + x5*1.314674e+000 + x6*(-1.656470e-002) + x7*(-3.499404e-001) + x8*(-7.373863e-003) $
;                   + x9*(-1.501734e-001) + x10*(-3.302989e-002) + x11*(-9.501147e-001) -1.513720e+000)))-1)*(-2.361609e-001) + (2/(1+exp(-2*(x1*2.998261e-001 $
;                   + x2*9.620630e-001 + x3*7.863338e-002 + x4*9.983103e-001 + x5*(-1.488616e-001) + x6*(-1.801891e-001) + x7*7.694381e-001 + x8*6.913113e-001 $
;                   + x9*(-1.182937e-001) + x10*1.125942e-001 + x11*1.235984e-001 + 2.816774e-001)))-1)*(-2.312064e-001) + (2/(1+exp(-2*(x1*(-2.319732e+000) $
;                   + x2*(-5.777909e-001) + x3*8.022373e-001 + x4*7.956962e-001 + x5*(-6.773465e-001) + x6*2.122697e-001 + x7*(-2.300928e-001) + x8*(-2.237993e-001) $
;                   + x9*(-2.050171e-001) + x10*(-1.808916e-001) + x11*(-2.724216e-001) + 1.010599e+000)))-1)*5.427418e-002 + (2/(1+exp(-2*(x1*5.968258e-001 $
;                   + x2*(-6.272039e-002) + x3*7.838866e-001 + x4*3.086514e-001 + x5*1.857262e-001 + x6*(-4.725408e-001) + x7*1.265467e+000 + x8*1.884844e-001 $
;                   + x9*(-1.082419e+000) + x10*9.389020e-003 + x11*1.289086e+000 + 1.978971e-001)))-1)*8.868712e-002 + (2/(1+exp(-2*(x1*(-6.787177e-001) $
;                   + x2*1.361141e+000 + x3*4.242464e-001 + x4*1.198405e+000 + x5*(-5.632985e-001) + x6*1.061509e+000 + x7*4.075891e-001 + x8*7.144099e-001 $
;                   + x9*6.250744e-001 + x10*(-2.498975e-001) + x11*1.350367e+000 + 1.150136e-001)))-1)*4.916918e-002 + (2/(1+exp(-2*(x1*4.578407e-001 + x2*(-5.847067e-001) $
;                   + x3*(-2.917161e-002) + x4*2.628517e-001 + x5*(-3.792198e-001) + x6*4.973659e-001 + x7*(-5.139485e-001) + x8*1.184277e-002 + x9*1.015795e+000 $
;                   + x10*2.645837e-003 + x11*(-1.766867e+000) -1.419026e-001)))-1)*2.685296e-001 + (2/(1+exp(-2*(x1*(-1.352320e+000) + x2*(-1.648298e-001) + x3*(-2.254672e-001) $
;                   + x4*1.440311e+000 + x5*8.462713e-001 + x6*1.116300e-001 + x7*(-8.606460e-001) + x8*(-9.814566e-001) + x9*6.318561e-002 + x10*(-2.193766e-001) $
;                   + x11*1.632348e-001 -5.647791e-001)))-1)*(-9.975795e-003) + (2/(1+exp(-2*(x1*1.140968e+000 + x2*1.314574e+000 + x3*(-8.578971e-001) + x4*1.531032e+000 $
;                   + x5*1.332486e+000 + x6*(-3.567295e-001) + x7*5.739287e-002 + x8*5.872537e-001 + x9*1.270036e-001 + x10*3.409906e-001 + x11*(-1.766940e-001) $
;                   -6.353121e-003)))-1)*4.406574e-002 + (2/(1+exp(-2*(x1*(-5.244430e-001) + x2*(-8.343656e-001) + x3*5.203498e-001 + x4*(-9.925469e-001) + x5*1.304630e+000 $
;                   + x6*2.809569e-001 + x7*(-1.689703e-002) + x8*8.216344e-001 + x9*(-2.522851e-001) + x10*(-1.658768e-001) + x11*(-1.961988e+000) -1.776180e-001)))-1)*5.514305e-002 $
;                   + (2/(1+exp(-2*(x1*3.279616e-001 + x2*(-4.375002e-001) + x3*4.387803e-002 + x4*(-5.501400e-001) + x5*(-8.565877e-001) + x6*4.391854e-002 $
;                   + x7*6.908597e-002 + x8*6.846813e-001 + x9*2.778449e-001 + x10*(-5.143424e-001) + x11*(-8.861342e-001) + 6.886770e-001)))-1)*(-1.374419e-001)$
;                    + (2/(1+exp(-2*(x1*3.334734e-001 + x2*(-1.996905e+000) + x3*(-6.054301e-001) + x4*4.512284e-001 + x5*(-1.499837e+000) + x6*(-1.759464e-001) $
;                    + x7*2.002679e-001 + x8*2.484810e-001 + x9*(-6.863660e-002) + x10*2.007556e-001 + x11*(-1.232336e+000) -7.699519e-001)))-1)*1.730855e-002 $
;                    + 4.813247e-002)))-1)*(-4.181119e-001) + (2/(1+exp(-2*((2/(1+exp(-2*(x1*(-2.037026e+000) + x2*2.307325e-001 + x3*(-1.049685e-001) + x4*(-7.108978e-001) $
;                    + x5*1.314674e+000 + x6*(-1.656470e-002) + x7*(-3.499404e-001) + x8*(-7.373863e-003) + x9*(-1.501734e-001) + x10*(-3.302989e-002) $
;                    + x11*(-9.501147e-001) -1.513720e+000)))-1)*(-1.421217e-002) + (2/(1+exp(-2*(x1*2.998261e-001 + x2*9.620630e-001 + x3*7.863338e-002 + x4*9.983103e-001 $
;                    + x5*(-1.488616e-001) + x6*(-1.801891e-001) + x7*7.694381e-001 + x8*6.913113e-001 + x9*(-1.182937e-001) + x10*1.125942e-001 + x11*1.235984e-001 $
;                    + 2.816774e-001)))-1)*(-1.462795e-002) + (2/(1+exp(-2*(x1*(-2.319732e+000) + x2*(-5.777909e-001) + x3*8.022373e-001 + x4*7.956962e-001 $
;                    + x5*(-6.773465e-001) + x6*2.122697e-001 + x7*(-2.300928e-001) + x8*(-2.237993e-001) + x9*(-2.050171e-001) + x10*(-1.808916e-001) $
;                    + x11*(-2.724216e-001) + 1.010599e+000)))-1)*(-1.942737e-003) + (2/(1+exp(-2*(x1*5.968258e-001 + x2*(-6.272039e-002) + x3*7.838866e-001 $
;                    + x4*3.086514e-001 + x5*1.857262e-001 + x6*(-4.725408e-001) + x7*1.265467e+000 + x8*1.884844e-001 + x9*(-1.082419e+000) + x10*9.389020e-003 $
;                    + x11*1.289086e+000 + 1.978971e-001)))-1)*1.741130e-003 + (2/(1+exp(-2*(x1*(-6.787177e-001) + x2*1.361141e+000 + x3*4.242464e-001 + x4*1.198405e+000 $
;                    + x5*(-5.632985e-001) + x6*1.061509e+000 + x7*4.075891e-001 + x8*7.144099e-001 + x9*6.250744e-001 + x10*(-2.498975e-001) + x11*1.350367e+000 $
;                    + 1.150136e-001)))-1)*4.947555e-003 + (2/(1+exp(-2*(x1*4.578407e-001 + x2*(-5.847067e-001) + x3*(-2.917161e-002) + x4*2.628517e-001 $
;                    + x5*(-3.792198e-001) + x6*4.973659e-001 + x7*(-5.139485e-001) + x8*1.184277e-002 + x9*1.015795e+000 + x10*2.645837e-003 + x11*(-1.766867e+000) $
;                    -1.419026e-001)))-1)*2.684843e-002 + (2/(1+exp(-2*(x1*(-1.352320e+000) + x2*(-1.648298e-001) + x3*(-2.254672e-001) + x4*1.440311e+000 $
;                    + x5*8.462713e-001 + x6*1.116300e-001 + x7*(-8.606460e-001) + x8*(-9.814566e-001) + x9*6.318561e-002 + x10*(-2.193766e-001) $
;                    + x11*1.632348e-001 -5.647791e-001)))-1)*(-3.384120e-003) + (2/(1+exp(-2*(x1*1.140968e+000 + x2*1.314574e+000 + x3*(-8.578971e-001) $
;                    + x4*1.531032e+000 + x5*1.332486e+000 + x6*(-3.567295e-001) + x7*5.739287e-002 + x8*5.872537e-001 + x9*1.270036e-001 + x10*3.409906e-001 $
;                    + x11*(-1.766940e-001) -6.353121e-003)))-1)*4.584390e-003 + (2/(1+exp(-2*(x1*(-5.244430e-001) + x2*(-8.343656e-001) + x3*5.203498e-001 $
;                    + x4*(-9.925469e-001) + x5*1.304630e+000 + x6*2.809569e-001 + x7*(-1.689703e-002) + x8*8.216344e-001 + x9*(-2.522851e-001) + x10*(-1.658768e-001) $
;                    + x11*(-1.961988e+000) -1.776180e-001)))-1)*(-5.055287e-003) + (2/(1+exp(-2*(x1*3.279616e-001 + x2*(-4.375002e-001) + x3*4.387803e-002 $
;                    + x4*(-5.501400e-001) + x5*(-8.565877e-001) + x6*4.391854e-002 + x7*6.908597e-002 + x8*6.846813e-001 + x9*2.778449e-001 + x10*(-5.143424e-001) $
;                    + x11*(-8.861342e-001) + 6.886770e-001)))-1)*(-1.700133e-002) + (2/(1+exp(-2*(x1*3.334734e-001 + x2*(-1.996905e+000) + x3*(-6.054301e-001) $
;                    + x4*4.512284e-001 $+ x5*(-1.499837e+000) + x6*(-1.759464e-001) + x7*2.002679e-001 + x8*2.484810e-001 + x9*(-6.863660e-002) + x10*2.007556e-001 $
;                    + x11*(-1.232336e+000) -7.699519e-001)))-1)*4.116097e-003 -6.996663e-003)))-1)*(-3.898415e-002) + (2/(1+exp(-2*((2/(1+exp(-2*(x1*(-2.037026e+000) $
;                    + x2*2.307325e-001 + x3*(-1.049685e-001) + x4*(-7.108978e-001) + x5*1.314674e+000 + x6*(-1.656470e-002) + x7*(-3.499404e-001) + x8*(-7.373863e-003) $
;                    + x9*(-1.501734e-001) + x10*(-3.302989e-002) + x11*(-9.501147e-001) -1.513720e+000)))-1)*2.109612e-001 + (2/(1+exp(-2*(x1*2.998261e-001 $
;                    + x2*9.620630e-001 + x3*7.863338e-002 + x4*9.983103e-001 + x5*(-1.488616e-001) + x6*(-1.801891e-001) + x7*7.694381e-001 + x8*6.913113e-001 $
;                    + x9*(-1.182937e-001) + x10*1.125942e-001 + x11*1.235984e-001 + 2.816774e-001)))-1)*8.150699e-001 + (2/(1+exp(-2*(x1*(-2.319732e+000) $
;                    + x2*(-5.777909e-001) + x3*8.022373e-001 + x4*7.956962e-001 + x5*(-6.773465e-001) + x6*2.122697e-001 + x7*(-2.300928e-001) + x8*(-2.237993e-001) $
;                    + x9*(-2.050171e-001) + x10*(-1.808916e-001) + x11*(-2.724216e-001) + 1.010599e+000)))-1)*(-6.315406e-001) + (2/(1+exp(-2*(x1*5.968258e-001 $
;                    + x2*(-6.272039e-002) + x3*7.838866e-001 + x4*3.086514e-001 + x5*1.857262e-001 + x6*(-4.725408e-001) + x7*1.265467e+000 + x8*1.884844e-001 $
;                    + x9*(-1.082419e+000) + x10*9.389020e-003 + x11*1.289086e+000 + 1.978971e-001)))-1)*(-1.254433e-001) + (2/(1+exp(-2*(x1*(-6.787177e-001) $
;                    + x2*1.361141e+000 + x3*4.242464e-001 + x4*1.198405e+000 + x5*(-5.632985e-001) + x6*1.061509e+000 + x7*4.075891e-001 + x8*7.144099e-001 $
;                    + x9*6.250744e-001 + x10*(-2.498975e-001) + x11*1.350367e+000 + 1.150136e-001)))-1)*(-3.571268e-001) + (2/(1+exp(-2*(x1*4.578407e-001 $
;                    + x2*(-5.847067e-001) + x3*(-2.917161e-002) + x4*2.628517e-001 + x5*(-3.792198e-001) + x6*4.973659e-001 + x7*(-5.139485e-001) + x8*1.184277e-002 $
;                    + x9*1.015795e+000 + x10*2.645837e-003 + x11*(-1.766867e+000) -1.419026e-001)))-1)*7.516744e-002 + (2/(1+exp(-2*(x1*(-1.352320e+000) $
;                    + x2*(-1.648298e-001) + x3*(-2.254672e-001) + x4*1.440311e+000 + x5*8.462713e-001 + x6*1.116300e-001 + x7*(-8.606460e-001) + x8*(-9.814566e-001) $
;                    + x9*6.318561e-002 + x10*(-2.193766e-001) + x11*1.632348e-001 -5.647791e-001)))-1)*(-8.307267e-001) + (2/(1+exp(-2*(x1*1.140968e+000 + x2*1.314574e+000 $
;                    + x3*(-8.578971e-001) + x4*1.531032e+000 + x5*1.332486e+000 + x6*(-3.567295e-001) + x7*5.739287e-002 + x8*5.872537e-001 + x9*1.270036e-001 $
;                    + x10*3.409906e-001 + x11*(-1.766940e-001) -6.353121e-003)))-1)*(-9.167265e-001) + (2/(1+exp(-2*(x1*(-5.244430e-001) + x2*(-8.343656e-001) $
;                    + x3*5.203498e-001 + x4*(-9.925469e-001) + x5*1.304630e+000 + x6*2.809569e-001 + x7*(-1.689703e-002) + x8*8.216344e-001 + x9*(-2.522851e-001) $
;                    + x10*(-1.658768e-001) + x11*(-1.961988e+000) -1.776180e-001)))-1)*(-8.667220e-002) + (2/(1+exp(-2*(x1*3.279616e-001 + x2*(-4.375002e-001) $
;                    + x3*4.387803e-002 + x4*(-5.501400e-001) + x5*(-8.565877e-001) + x6*4.391854e-002 + x7*6.908597e-002 + x8*6.846813e-001 + x9*2.778449e-001 $
;                    + x10*(-5.143424e-001) + x11*(-8.861342e-001) + 6.886770e-001)))-1)*3.763245e-001 + (2/(1+exp(-2*(x1*3.334734e-001 + x2*(-1.996905e+000) $
;                    + x3*(-6.054301e-001) + x4*4.512284e-001 + x5*(-1.499837e+000) + x6*(-1.759464e-001) + x7*2.002679e-001 + x8*2.484810e-001 + x9*(-6.863660e-002) $
;                    + x10*2.007556e-001 + x11*(-1.232336e+000) -7.699519e-001)))-1)*(-3.945455e-002) + 3.157851e-001)))-1)*(-1.442054e+000) $
;                    + (2/(1+exp(-2*((2/(1+exp(-2*(x1*(-2.037026e+000) + x2*2.307325e-001 + x3*(-1.049685e-001) + x4*(-7.108978e-001) + x5*1.314674e+000 $
;                    + x6*(-1.656470e-002) + x7*(-3.499404e-001) + x8*(-7.373863e-003) + x9*(-1.501734e-001) + x10*(-3.302989e-002) $
;                    + x11*(-9.501147e-001) -1.513720e+000)))-1)*8.430031e-001 + (2/(1+exp(-2*(x1*2.998261e-001 + x2*9.620630e-001 + x3*7.863338e-002 $
;                    + x4*9.983103e-001 + x5*(-1.488616e-001) + x6*(-1.801891e-001) + x7*7.694381e-001 + x8*6.913113e-001 + x9*(-1.182937e-001) + x10*1.125942e-001 $
;                    + x11*1.235984e-001 + 2.816774e-001)))-1)*1.597419e-001 + (2/(1+exp(-2*(x1*(-2.319732e+000) + x2*(-5.777909e-001) + x3*8.022373e-001 + x4*7.956962e-001 $
;                    + x5*(-6.773465e-001) + x6*2.122697e-001 + x7*(-2.300928e-001) + x8*(-2.237993e-001) + x9*(-2.050171e-001) + x10*(-1.808916e-001) $
;                    + x11*(-2.724216e-001) + 1.010599e+000)))-1)*(-4.613946e-001) + (2/(1+exp(-2*(x1*5.968258e-001 + x2*(-6.272039e-002) + x3*7.838866e-001 $
;                    + x4*3.086514e-001 + x5*1.857262e-001 + x6*(-4.725408e-001) + x7*1.265467e+000 + x8*1.884844e-001 + x9*(-1.082419e+000) + x10*9.389020e-003 $
;                    + x11*1.289086e+000 + 1.978971e-001)))-1)*(-9.819380e-002) + (2/(1+exp(-2*(x1*(-6.787177e-001) + x2*1.361141e+000 + x3*4.242464e-001 + x4*1.198405e+000 $
;                    + x5*(-5.632985e-001) + x6*1.061509e+000 + x7*4.075891e-001 + x8*7.144099e-001 + x9*6.250744e-001 + x10*(-2.498975e-001) + x11*1.350367e+000 $
;                    + 1.150136e-001)))-1)*7.416225e-001 + (2/(1+exp(-2*(x1*4.578407e-001 + x2*(-5.847067e-001) + x3*(-2.917161e-002) + x4*2.628517e-001 $
;                    + x5*(-3.792198e-001) + x6*4.973659e-001 + x7*(-5.139485e-001) + x8*1.184277e-002 + x9*1.015795e+000 + x10*2.645837e-003 + x11*(-1.766867e+000) $
;                    -1.419026e-001)))-1)*(-2.383588e-001) + (2/(1+exp(-2*(x1*(-1.352320e+000) + x2*(-1.648298e-001) + x3*(-2.254672e-001) + x4*1.440311e+000 $
;                    + x5*8.462713e-001 + x6*1.116300e-001 + x7*(-8.606460e-001) + x8*(-9.814566e-001) + x9*6.318561e-002 + x10*(-2.193766e-001) + x11*1.632348e-001 $
;                    -5.647791e-001)))-1)*(-6.246600e-001) + (2/(1+exp(-2*(x1*1.140968e+000 + x2*1.314574e+000 + x3*(-8.578971e-001) + x4*1.531032e+000 + x5*1.332486e+000 $
;                    + x6*(-3.567295e-001) + x7*5.739287e-002 + x8*5.872537e-001 + x9*1.270036e-001 + x10*3.409906e-001 $
;                    + x11*(-1.766940e-001) -6.353121e-003)))-1)*(-7.980800e-001) + (2/(1+exp(-2*(x1*(-5.244430e-001) + x2*(-8.343656e-001) + x3*5.203498e-001 $
;                    + x4*(-9.925469e-001) + x5*1.304630e+000 + x6*2.809569e-001 + x7*(-1.689703e-002) + x8*8.216344e-001 + x9*(-2.522851e-001) + x10*(-1.658768e-001) $
;                    + x11*(-1.961988e+000) -1.776180e-001)))-1)*3.203672e-001 + (2/(1+exp(-2*(x1*3.279616e-001 + x2*(-4.375002e-001) + x3*4.387803e-002 $
;                    + x4*(-5.501400e-001) + x5*(-8.565877e-001) + x6*4.391854e-002 + x7*6.908597e-002 + x8*6.846813e-001 + x9*2.778449e-001 + x10*(-5.143424e-001) $
;                    + x11*(-8.861342e-001) + 6.886770e-001)))-1)*1.993820e-001 + (2/(1+exp(-2*(x1*3.334734e-001 + x2*(-1.996905e+000) + x3*(-6.054301e-001) $
;                    + x4*4.512284e-001 + x5*(-1.499837e+000) + x6*(-1.759464e-001) + x7*2.002679e-001 + x8*2.484810e-001 + x9*(-6.863660e-002) + x10*2.007556e-001 $
;                    + x11*(-1.232336e+000) -7.699519e-001)))-1)*5.942482e-002 + 2.330284e-001)))-1)*(-8.525472e-001) + 2.512882e-001))
;
;	  cx=val_y
;      Q = size(cx)
;      Q=Q[1]
;      oneQ = lindgen(Q,1)*0+1;
;      ps_xmax=398.6
;      ps_xmin=366.4
;      ps_ymax=1L
;      ps_ymin=-1L
;      rangex = ps_xmax-ps_xmin
;      rangey = ps_ymax-ps_ymin
;
;      val_yhat=rangex[oneQ,*]*(val_y-ps_ymin)*(1/float(rangey)) + ps_xmin[oneQ,*]
;
;      bad_ind=where(QA_cc ge 1,bad_ind_cnt)
;
;      val_yhat(bad_ind)=-9999;
;
;      bad_ind=where(val_yhat lt 0,bad_ind_cnt)
;
;      val_yhat(bad_ind)=-9999;
;
;      airs_prod=reform(val_yhat,sz[3],sz[2])
;
;      airs_prod=transpose(airs_prod)
;
;      ;; project the airs co2 product with latitude and longitude
;      ENVI_ENTER_DATA, float(airs_prod), r_fid= refl_fid
;      ENVI_ENTER_DATA, float(londata), r_fid= x_fid
;      ENVI_ENTER_DATA, float(latdata), r_fid= y_fid
;      envi_file_query, x_fid, ns=ns, nl=nl, nb=nb
;      x_pos=lindgen(nb)
;      ENVI_FILE_QUERY, y_fid, ns=ns, nl=nl, nb=nb
;      y_pos=lindgen(nb)
;
;      i_proj=ENVI_PROJ_CREATE(/geographic)
;      o_proj=ENVI_PROJ_CREATE(/geographic)
;      dims=[-1L,0, ns-1, 0, nl-1]
;      pixel_size=0.5
;      pos=lindgen(nb)
;;
;;      ;;  data georefernce
;
;      geogltname='airs_glt.img'
;
;      ENVI_GLT_DOIT, DIMS=dims,i_proj= i_proj, o_proj=o_proj, out_name = geogltname, $
;      pixel_size=pixel_size,r_fid=glt_fid, rotation=0.0, x_fid=x_fid, x_pos=x_pos[0], $
;      y_fid=y_fid, y_pos=y_pos[0]
;
;
;      ENVI_FILE_QUERY, glt_fid, dims=glt_dims
;
;;    ;  ENVI_GEOREF_FROM_GLT_DOIT
;
;
;      ENVI_DOIT, 'ENVI_GEOREF_FROM_GLT_DOIT', BACKGROUND=0, FID=refl_fid,GLT_DIMS=glt_dims, pos=pos, GLT_FID=glt_fid,$
;          out_name=airsco2name, r_fid=out_fid ,/IN_MEMORY
;
;
;
;      ENVI_FILE_QUERY, out_fid, dims=tiff_dims, pos=tiff_pos
;
;      envi_output_to_external_format, /tiff,$
;               fid=out_fid, pos=pos, dims=tiff_dims, out_name=tiff_co2out_name
;
;     envi_file_mng, id=refl_fid, /remove
;     envi_file_mng, id=x_fid, /remove
;     envi_file_mng, id=y_fid, /remove
;     envi_file_mng, id=out_fid, /remove
;     envi_file_mng, id=glt_fid, /remove
;
;
;
;end