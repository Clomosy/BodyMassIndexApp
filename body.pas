var 
  MyForm:TCLForm;
  formLayout:TclLayout;
  mainPnl:TclProPanel;
  
  mainPnlHeight,mainPnlWidth:integer;
  
  kgLyt,heightLyt,genderLyt:TclLayout;
  kgEdt,heightEdt:TclProEdit;
  kgLbl,heightLbl,outputLbl,genderLbl,titleLbl:TclProLabel;

  maleBtn,femaleBtn,checkBtn, outputImg:TClProImage;
  
  sonuc:double;
  
  genderState:integer;
  
  Procedure CheckBtnOnClick;
  begin
    if (heightEdt.text ='') or (kgEdt.Text='') then
    begin
         ShowMessage('Please Enter Weight and Height Values.');
         exit;
    end;
   
    
    sonuc := StrToFloat(kgEdt.Text)/Sqr((StrToFloat(heightEdt.text))/100);
    if sonuc < (18.5) then
    begin
      ShowMessage('Weak');
      case genderState of
        1:
        begin
          clComponent.SetupComponent(outputImg,'{"Align" : "Client","Width" :150, "Height":150,
          "BackgroundColor":"null",
          "MarginTop" : 50,
          "ImgUrl":"https://clomosy.com/illustration/underweightman.png", "ImgFit":"yes"}');
        
        end;
        2:
        begin
          clComponent.SetupComponent(outputImg,'{"Align" : "Client","Width" :150, "Height":150,
          "BackgroundColor":"null",
          "MarginTop" : 50,
          "ImgUrl":"https://clomosy.com/illustration/underweightwoman.png", "ImgFit":"yes"}');
        end;
      end;
    end
    else if sonuc < 24.9 then
    begin
      ShowMessage('Normal');
      case genderState of
        1:
        begin
          clComponent.SetupComponent(outputImg,'{"Align" : "Client","Width" :150, "Height":150,
          "BackgroundColor":"null",
          "MarginTop" : 50,
          "ImgUrl":"https://clomosy.com/illustration/normalman.png", "ImgFit":"yes"}');
        
        end;
        2:
        begin
          clComponent.SetupComponent(outputImg,'{"Align" : "Client","Width" :150, "Height":150,
          "BackgroundColor":"null",
          "MarginTop" : 50,
          "ImgUrl":"https://clomosy.com/illustration/normalwoman.png", "ImgFit":"yes"}');
        end;
      end;
    end
    else if sonuc < 29.9 then
    begin
      ShowMessage('Overweight');
      case genderState of
        1:
        begin
          clComponent.SetupComponent(outputImg,'{"Align" : "Client","Width" :150, "Height":150,
          "BackgroundColor":"null",
          "MarginTop" : 50,
          "ImgUrl":"https://clomosy.com/illustration/overweightman.png", "ImgFit":"yes"}');
        
        end;
        2:
        begin
          clComponent.SetupComponent(outputImg,'{"Align" : "Client","Width" :150, "Height":150,
          "BackgroundColor":"null",
          "MarginTop" : 50,
          "ImgUrl":"https://clomosy.com/illustration/overweightwoman.png", "ImgFit":"yes"}');
        end;
      end;
    end
    else 
    if sonuc < 39.9 then
    begin
      
      case genderState of
        1:
        begin
          clComponent.SetupComponent(outputImg,'{"Align" : "Client","Width" :150, "Height":150,
          "BackgroundColor":"null",
          "MarginTop" : 50,
          "ImgUrl":"https://clomosy.com/illustration/obeseman.png", "ImgFit":"yes"}');
          ShowMessage('Obese');
        
        end;
        2:
        begin
          clComponent.SetupComponent(outputImg,'{"Align" : "Client","Width" :150, "Height":150,
          "BackgroundColor":"null",
          "MarginTop" : 50,
          "ImgUrl":"https://clomosy.com/illustration/obesewoman.png", "ImgFit":"yes"}');
          
          ShowMessage('Obese');
        end;
      end;
    end
    else 
    begin
      
      case genderState of
        1:
        begin
          clComponent.SetupComponent(outputImg,'{"Align" : "Client","Width" :150, "Height":150,
          "BackgroundColor":"null",
          "MarginTop" : 50,
          "ImgUrl":"https://clomosy.com/illustration/obeseman2.png", "ImgFit":"yes"}');
          
          ShowMessage('Obese');
        
        end;
        2:
        begin
          clComponent.SetupComponent(outputImg,'{"Align" : "Client","Width" :150, "Height":150,
          "BackgroundColor":"null",
          "MarginTop" : 50,
          "ImgUrl":"https://clomosy.com/illustration/obesewoman2.png", "ImgFit":"yes"}');
          
          ShowMessage('Obese');
        end;
      end;
    end;
    
    
  end;
  Procedure MaleBtnOnClick;
  begin
    genderState := 1;
    clComponent.SetupComponent(maleBtn,'{"Align" : "Left","Width" :50, "Height":300,
    "BackgroundColor":"#689bca",
    "BorderColor":"#ffffff",
    "BorderWidth":1,
    "RoundHeight":10,
    "RoundWidth":10,
    "ImgUrl":"https://clomosy.com/educa/male.png", "ImgFit":"yes"}');
  
    clComponent.SetupComponent(outputImg,'{"Align" : "Client","Width" :150, "Height":150,
    "BackgroundColor":"null",
    "MarginTop" : 50,
    "ImgUrl":"https://clomosy.com/illustration/normalman.png", "ImgFit":"yes"}');
    
    clComponent.SetupComponent(femaleBtn,'{"Align" : "Left","Width" :50, "Height":300,
    "BackgroundColor":"null",
    "BorderColor":"#ffffff",
    "BorderWidth":1,
    "RoundHeight":10,
    "RoundWidth":10,
    "MarginLeft":30,
    "ImgUrl":"https://clomosy.com/educa/female.png", "ImgFit":"yes"}');
  end;
  Procedure FemaleBtnOnClick;
  begin
    genderState := 2;
    clComponent.SetupComponent(maleBtn,'{"Align" : "Left","Width" :50, "Height":300,
    "BackgroundColor":"null",
    "BorderColor":"#ffffff",
    "BorderWidth":1,
    "RoundHeight":10,
    "RoundWidth":10,
    "ImgUrl":"https://clomosy.com/educa/male.png", "ImgFit":"yes"}');
  
    clComponent.SetupComponent(outputImg,'{"Align" : "Client","Width" :150, "Height":150,
    "BackgroundColor":"null",
    "MarginTop" : 50,
    "ImgUrl":"https://clomosy.com/illustration/normalwoman.png", "ImgFit":"yes"}');
    
    clComponent.SetupComponent(femaleBtn,'{"Align" : "Left","Width" :50, "Height":300,
    "BackgroundColor":"#D37bc5",
    "BorderColor":"#ffffff",
    "BorderWidth":1,
    "RoundHeight":10,
    "RoundWidth":10,
    "MarginLeft":30,
    "ImgUrl":"https://clomosy.com/educa/female.png", "ImgFit":"yes"}');
  end;
  
  Procedure SetupContents;
  begin
    genderState := 1;
    
  
    {           KG Edit Start                }
    kgLyt := MyForm.AddNewLayout(mainPnl,'kgLyt');
    kgLyt.Align:=alMostTop;
    kgLyt.Height := 35;
    kgLyt.Width := 200;
    kgLyt.Margins.Top := 20;
    kgLyt.Margins.Left := 20;
    kgLyt.Margins.Right := 20;
    kgLyt.Margins.Bottom := 20;
    
    kgLbl := MyForm.AddNewProLabel(kgLyt,'kgLbl','KG :');
    clComponent.SetupComponent(kgLbl,'{"Align" : "Left","Width" :60, "Height":30,"TextColor":"#ffffff",
    "TextVerticalAlign":"center",
    "TextHorizontalAlign":"left",
    "MarginBottom":0,
    "TextSize":12,"TextBold":"yes"}');
    
    
    kgEdt := MyForm.AddNewProEdit(kgLyt,'kgEdt','80');
    clComponent.SetupComponent(kgEdt,'{"Align" : "Client",
    "Width" :129,
    "Height":33,
    "MarginBottom":0,
    "BackgroundColor":"null",
    "TextColor":"#ffffff", 
    "BorderColor":"#ffffff",
    "BorderWidth":1}');
    
    kgEdt.StyledSettings := ssFamily;
    kgEdt.TextSettings.FontColor := clAlphaColor.clHexToColor('#ffffff');
    
    kgEdt.clTypeOfField := taFloat;
    {           KG Edit End                }
    
    {           HEIGHT Edit Start                }
    heightLyt := MyForm.AddNewLayout(mainPnl,'heightLyt');
    heightLyt.Align:=alMostTop;
    heightLyt.Height := 35;
    heightLyt.Width := 200;
    heightLyt.Margins.Top := 20;
    heightLyt.Margins.Left := 20;
    heightLyt.Margins.Right := 20;
    heightLyt.Margins.Bottom := 20;
    
    heightLbl := MyForm.AddNewProLabel(heightLyt,'heightLbl','Length :');
    clComponent.SetupComponent(heightLbl,'{"Align" : "Left","Width" :60, "Height":30,"TextColor":"#ffffff",
    "TextVerticalAlign":"center",
    "TextHorizontalAlign":"left",
    "MarginBottom":0,
    "TextSize":12,"TextBold":"yes"}');
    
    
    heightEdt := MyForm.AddNewProEdit(heightLyt,'heightEdt','1.80');
    clComponent.SetupComponent(heightEdt,'{"Align" : "Client",
    "Width" :129,
    "Height":33,
    "MarginBottom":0,
    "BackgroundColor":"null",
    "TextColor":"#ffffff", 
    "BorderColor":"#ffffff",
    "BorderWidth":1}');
    
    HeightEdt.StyledSettings := ssFamily;
    HeightEdt.TextSettings.FontColor := clAlphaColor.clHexToColor('#ffffff');
    
    HeightEdt.clTypeOfField := taFloat;
    {           HEIGHT Edit End                }
    
    genderLyt := MyForm.AddNewLayout(mainPnl,'genderLyt');
    genderLyt.Align:=alMostTop;
    genderLyt.Height := 35;
    genderLyt.Width := 200;
    genderLyt.Margins.Top := 20;
    genderLyt.Margins.Left := 20;
    genderLyt.Margins.Right := 20;
    genderLyt.Margins.Bottom := 20;
    
    genderLbl := MyForm.AddNewProLabel(genderLyt,'genderLbl','Gender :');
    clComponent.SetupComponent(genderLbl,'{"Align" : "Left","Width" :60, "Height":30,"TextColor":"#ffffff",
    "TextVerticalAlign":"center",
    "TextHorizontalAlign":"left",
    "MarginBottom":0,
    "TextSize":12,"TextBold":"yes"}');
    
    maleBtn := MyForm.AddNewProImage(genderLyt,'maleBtn');
    clComponent.SetupComponent(maleBtn,'{"Align" : "Left","Width" :50, "Height":300,
    "BackgroundColor":"#689bca",
    "BorderColor":"#ffffff",
    "BorderWidth":1,
    "RoundHeight":10,
    "RoundWidth":10,
    "ImgUrl":"https://clomosy.com/educa/male.png", "ImgFit":"yes"}');
    
    MyForm.AddNewEvent(maleBtn,tbeOnClick,'MaleBtnOnClick');
    
    femaleBtn := MyForm.AddNewProImage(genderLyt,'femaleBtn');
    clComponent.SetupComponent(femaleBtn,'{"Align" : "Left","Width" :50, "Height":300,
    "BackgroundColor":"null",
    "BorderColor":"#ffffff",
    "BorderWidth":1,
    "RoundHeight":10,
    "RoundWidth":10,
    "MarginLeft":30,
    "ImgUrl":"https://clomosy.com/educa/female.png", "ImgFit":"yes"}');
    
    MyForm.AddNewEvent(femaleBtn,tbeOnClick,'FemaleBtnOnClick');
    
    checkBtn := MyForm.AddNewProImage(mainPnl,'checkBtn');
    clComponent.SetupComponent(checkBtn,'{"Align" : "Top","Width" :60, "Height":60,
    "BackgroundColor":"null",
    "ImgUrl":"https://clomosy.com/educa/checked.png", "ImgFit":"yes"}');
    
    MyForm.AddNewEvent(checkBtn,tbeOnClick,'CheckBtnOnClick');
    
    
    
    outputImg := MyForm.AddNewProImage(mainPnl,'outputImg');
    clComponent.SetupComponent(outputImg,'{"Align" : "Client","Width" :150, "Height":150,
    "BackgroundColor":"null",
    "MarginTop" : 50,
    "ImgUrl":"https://clomosy.com/illustration/normalman.png", "ImgFit":"yes"}');
    
  end;
  Procedure SetupFormLayout;
  begin
    formLayout := MyForm.AddNewLayout(MyForm,'formLayout');
    formLayout.Align:=alContents;
    //ShowMessage('Height: '+IntToStr(formLayout.Height)+',Width: '+IntToStr(formLayout.Width));
    mainPnlHeight := (formLayout.Height)/2;
    mainPnlWidth := (formLayout.Width)/2;
  end;
  Procedure SetupPanel;
  begin
    mainPnl:=MyForm.AddNewProPanel(MyForm,'mainPnl');
    clComponent.SetupComponent(mainPnl,'{"Align" : "Client","Width" :'+IntToStr(mainPnlWidth)+',
    "Height":'+IntToStr(mainPnlHeight)+',
    "BackgroundColor":"null", 
    "BorderColor":"null",
    "MarginTop" : 1,
    "MarginBottom":20,
    "MarginRight":50,
    "MarginLeft":50, 
    "RoundHeight":10,
    "RoundWidth":10,
    "BorderWidth":1}');
  end;
begin
  //exit;
  MyForm := TCLForm.Create(Self);
  
  MyForm.SetFormBGImage('https://images.clomosy.com/media/ThemeStyle5.png');
  SetupFormLayout;
  SetupPanel;
  SetupContents;
  MyForm.Run;
end;
