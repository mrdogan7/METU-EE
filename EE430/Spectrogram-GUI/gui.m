function varargout = gui(varargin)
%GUI M-file for gui.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('Property','Value',...) creates a new GUI using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to gui_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      GUI('CALLBACK') and GUI('CALLBACK',hObject,...) call the
%      local function named CALLBACK in GUI.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui

% Last Modified by GUIDE v2.5 15-Dec-2017 20:37:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
   gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before gui is made visible.
function gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui wait for user response (see UIRESUME)
% uiwait(handles.1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Fs_record = str2num(char(get(handles.edit10,'String')));
duration_record = str2num(char(get(handles.edit12,'String')));
recObj = audiorecorder(Fs_record,8,1)
disp('Start speaking.')
recordblocking(recObj, duration_record);
disp('End of Recording.');
y = getaudiodata(recObj);
 
figure
plot(y);
sound(y,Fs_record)
% y=transpose(y);
contents = get(handles.popupmenu6,'String');
  popupmenu6value = contents{get(handles.popupmenu6,'Value')};
  switch popupmenu6value
      case 'Rectangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit12,'String')));
          samp=str2num(char(get(handles.edit10,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=rectwin(winlen);
          row = ceil((1+winlen)/2)            
          column =((length(t)-1)/winlen)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = transpose(y(i+1:i+winlen)).*(filter2(i+1:i+winlen));
              yw=fft(xw,fftn);
              [m1,n1]=size(stft)
               [m2,n2]=size(yw)
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:shift:winlen/2+(column-1)*shift)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          surf(f,t,transpose(abs(stft)));
          
          
         
         
           
          
          
          
         
         
          
          case 'Gaussian'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit12,'String')));
          samp=str2num(char(get(handles.edit10,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=gausswin(winlen);
          row = ceil((1+winlen)/2)            
          column =((length(t)-1)/winlen)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = transpose(y(i+1:i+winlen)).*(filter2(i+1:i+winlen));
              yw=fft(xw,fftn);
              [m1,n1]=size(stft)
               [m2,n2]=size(yw)
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:shift:winlen/2+(column-1)*shift)/samp;
          f=(0:row-1)*samp/fftn;         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
           
          
          
          
         
         
           
      
      case 'Triangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit12,'String')));
          samp=str2num(char(get(handles.edit10,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=triang(winlen);
          row = ceil((1+winlen)/2)            
          column =((length(t)-1)/winlen)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = transpose(y(i+1:i+winlen)).*(filter2(i+1:i+winlen));
              yw=fft(xw,fftn);
              [m1,n1]=size(stft)
               [m2,n2]=size(yw)
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:shift:winlen/2+(column-1)*shift)/samp;
          f=(0:row-1)*samp/fftn;         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
           
          
          
          
         
         
          
           case 'Hamming'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit12,'String')));
          samp=str2num(char(get(handles.edit10,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hamming(winlen);
          row = ceil((1+winlen)/2)            
          column =((length(t)-1)/winlen)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = transpose(y(i+1:i+winlen)).*(filter2(i+1:i+winlen));
              yw=fft(xw,fftn);
              [m1,n1]=size(stft)
               [m2,n2]=size(yw)
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:shift:winlen/2+(column-1)*shift)/samp;
          f=(0:row-1)*samp/fftn;         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
           
          
          
          
         
         
          
           case 'Tukey'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit12,'String')));
          samp=str2num(char(get(handles.edit10,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=tukeywin(winlen);
          row = ceil((1+winlen)/2)            
          column =((length(t)-1)/winlen)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = transpose(y(i+1:i+winlen)).*(filter2(i+1:i+winlen));
              yw=fft(xw,fftn);
              [m1,n1]=size(stft)
               [m2,n2]=size(yw)
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:shift:winlen/2+(column-1)*shift)/samp;
          f=(0:row-1)*samp/fftn;         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
           
          
          
          
         
         
          
           case 'Hanning'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit12,'String')));
          samp=str2num(char(get(handles.edit10,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hann(winlen);
          row = ceil((1+winlen)/2)            
          column =((length(t)-1)/winlen)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = transpose(y(i+1:i+winlen)).*(filter2(i+1:i+winlen));
              yw=fft(xw,fftn);
              [m1,n1]=size(stft)
               [m2,n2]=size(yw)
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:shift:winlen/2+(column-1)*shift)/samp;
          f=(0:row-1)*samp/fftn;         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
           
          
          
          
         
         
          
           case 'Kaiser'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit12,'String')));
          samp=str2num(char(get(handles.edit10,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=kaiser(winlen);
          row = ceil((1+winlen)/2)            
          column =((length(t)-1)/winlen)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = transpose(y(i+1:i+winlen)).*(filter2(i+1:i+winlen));
              yw=fft(xw,fftn);
              [m1,n1]=size(stft)
               [m2,n2]=size(yw)
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:shift:winlen/2+(column-1)*shift)/samp;
          f=(0:row-1)*samp/fftn;         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
           
          
          
          
         
         
          
           case 'Taylor'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit12,'String')));
          samp=str2num(char(get(handles.edit10,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=taylorwin(winlen);
          row = ceil((1+winlen)/2)            
          column =((length(t)-1)/winlen)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = transpose(y(i+1:i+winlen)).*(filter2(i+1:i+winlen));
              yw=fft(xw,fftn);
              [m1,n1]=size(stft)
               [m2,n2]=size(yw)
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:shift:winlen/2+(column-1)*shift)/samp;
          f=(0:row-1)*samp/fftn;         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
           
          
          
          
         
         
          
           case 'Chebyshev'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit12,'String')));
          samp=str2num(char(get(handles.edit10,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=chebwin(winlen);
          row = ceil((1+winlen)/2)            
          column =((length(t)-1)/winlen)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = transpose(y(i+1:i+winlen)).*(filter2(i+1:i+winlen));
              yw=fft(xw,fftn);
              [m1,n1]=size(stft)
               [m2,n2]=size(yw)
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:shift:winlen/2+(column-1)*shift)/samp;
          f=(0:row-1)*samp/fftn;         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
           
          
          
          
         
         
  end
            
              
              
        
          
          

          
          



function edit10_Callback(hObject, eventdata, handles)
 %Fs_record = str2num(char(get(handles.edit10,'String')));
 
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName,PathName,FilterIndex] = uigetfile('*.mp3;*.wav');
FileName
PathName
cd(PathName);
[y,fr]=audioread(FileName);
y = sum(y, 2) / size(y, 2);
%sound(y,f);
fr
figure
plot(y);
contents = get(handles.popupmenu6,'String');
  popupmenu6value = contents{get(handles.popupmenu6,'Value')};
  switch popupmenu6value
      case 'Rectangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=length(y)*1/fr
          samp=fr;
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=rectwin(winlen);
          row = ceil((1+winlen)/2)            
%           column =round((length(t)-1)/winlen)
           column =1+fix((length(t)-winlen)/shift)
          stft = zeros(row, column); 
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = transpose(y(i+1:i+winlen)).*(filter2(i+1:i+winlen));
              yw=fft(xw,fftn);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:shift:winlen/2+(column-1)*shift)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
           
          
          
          
         
         
          
          case 'Gaussian'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=length(y)*1/fr
          samp=fr;
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=gausswin(winlen);
          row = ceil((1+winlen)/2)            
%           column =round((length(t)-1)/winlen)
           column =1+fix((length(t)-winlen)/shift)
          stft = zeros(row, column); 
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = transpose(y(i+1:i+winlen)).*(filter2(i+1:i+winlen));
              yw=fft(xw,fftn);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:shift:winlen/2+(column-1)*shift)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
           
          
          
          
         
         
          
          case 'Triangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=length(y)*1/fr
          samp=fr;
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=triang(winlen);
          row = ceil((1+winlen)/2)            
%           column =round((length(t)-1)/winlen)
           column =1+fix((length(t)-winlen)/shift)
          stft = zeros(row, column); 
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = transpose(y(i+1:i+winlen)).*(filter2(i+1:i+winlen));
              yw=fft(xw,fftn);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:shift:winlen/2+(column-1)*shift)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
           
          
          
          
         
         
          
          case 'Hamming'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=length(y)*1/fr
          samp=fr;
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hamming(winlen);
          row = ceil((1+winlen)/2)            
%           column =round((length(t)-1)/winlen)
           column =1+fix((length(t)-winlen)/shift)
          stft = zeros(row, column); 
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = transpose(y(i+1:i+winlen)).*(filter2(i+1:i+winlen));
              yw=fft(xw,fftn);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:shift:winlen/2+(column-1)*shift)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
           
          
          
          
         
         
          
          case 'Hanning'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=length(y)*1/fr
          samp=fr;
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hann(winlen);
          row = ceil((1+winlen)/2)            
%           column =round((length(t)-1)/winlen)
           column =1+fix((length(t)-winlen)/shift)
          stft = zeros(row, column); 
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = transpose(y(i+1:i+winlen)).*(filter2(i+1:i+winlen));
              yw=fft(xw,fftn);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:shift:winlen/2+(column-1)*shift)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
           
          
          
          
         
         
          
          case 'Taylor'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=length(y)*1/fr
          samp=fr;
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=taylorwin(winlen);
          row = ceil((1+winlen)/2)            
%           column =round((length(t)-1)/winlen)
           column =1+fix((length(t)-winlen)/shift)
          stft = zeros(row, column); 
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = transpose(y(i+1:i+winlen)).*(filter2(i+1:i+winlen));
              yw=fft(xw,fftn);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:shift:winlen/2+(column-1)*shift)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
           
          
          
          
         
         
          
          case 'Kaiser'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=length(y)*1/fr
          samp=fr;
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=kaiser(winlen);
          row = ceil((1+winlen)/2)            
%           column =round((length(t)-1)/winlen)
           column =1+fix((length(t)-winlen)/shift)
          stft = zeros(row, column); 
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = transpose(y(i+1:i+winlen)).*(filter2(i+1:i+winlen));
              yw=fft(xw,fftn);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:shift:winlen/2+(column-1)*shift)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
           
          
          
          
         
         
          
          case 'Tukey'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=length(y)*1/fr
          samp=fr;
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=tukeywin(winlen);
          row = ceil((1+winlen)/2)            
%           column =round((length(t)-1)/winlen)
           column =1+fix((length(t)-winlen)/shift)
          stft = zeros(row, column); 
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = transpose(y(i+1:i+winlen)).*(filter2(i+1:i+winlen));
              yw=fft(xw,fftn);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:shift:winlen/2+(column-1)*shift)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
           
          
          
          
         
         
          
          case 'Chebyshev'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=length(y)*1/fr
          samp=fr;
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=chebwin(winlen);
          row = ceil((1+winlen)/2)            
%           column =round((length(t)-1)/winlen)
           column =1+fix((length(t)-winlen)/shift)
          stft = zeros(row, column); 
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = transpose(y(i+1:i+winlen)).*(filter2(i+1:i+winlen));
              yw=fft(xw,fftn);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:shift:winlen/2+(column-1)*shift)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
           
          
          
          
         
         
          
  end


% a=load(fullfile[PathName FileName]);

 %FileName = uigetfile('*.mp3;*.wav');
 %A = importdata(FileName)
 %[y,Fs] = audioread(A);

% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dur=str2num(char(get(handles.edit22,'String')));
samp=str2num(char(get(handles.edit21,'String')));
a = str2num(char(get(handles.edit13,'String')));
p = str2num(char(get(handles.edit14,'String')));
f = str2num(char(get(handles.edit15,'String')));
t=0:1/samp:dur;
y=a.*sin(2.*pi.*f.*t+p*pi/180);

figure; plot(t,y)
contents = get(handles.popupmenu6,'String');
 popupmenu6value = contents{get(handles.popupmenu6,'Value')};
  switch popupmenu6value
      case 'Rectangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=rectwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
          case 'Gaussian'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=gausswin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
          case 'Hamming'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hamming(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Hanning'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hann(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Tukey'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=tukeywin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Kaiser'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=kaiser(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Chebyshev'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=chebwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Triangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=triang(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Taylor'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=taylorwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); 
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
  end





function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2double(get(hObject,'String')) returns contents of edit23 as a double


% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
contents = get(handles.popupmenu4,'String');
  popupmenu4value = contents{get(handles.popupmenu4,'Value')};
  switch popupmenu4value
      case 'Rectangular'
dur=str2num(char(get(handles.edit22,'String')));
samp=str2num(char(get(handles.edit21,'String')));
a = str2num(char(get(handles.edit23,'String')));
p = str2num(char(get(handles.edit20,'String')));
f = str2num(char(get(handles.edit16,'String')));
start=str2num(char(get(handles.edit19,'String')));
windur=str2num(char(get(handles.edit17,'String')));
t=0:1/samp:dur;
filter=zeros(1,length(t));
filter(start*samp:(start+windur)*samp)=1;
x=a.*sin(2.*pi.*f.*t+p*pi/180);
y=x.*filter;

figure; plot(t,y)
contents = get(handles.popupmenu6,'String');
 popupmenu6value = contents{get(handles.popupmenu6,'Value')};
  switch popupmenu6value
      case 'Rectangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=rectwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          xlim manual
          
         
         
          
          case 'Gaussian'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=gausswin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
          case 'Hamming'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hamming(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Hanning'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hann(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Tukey'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=tukeywin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Kaiser'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=kaiser(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Chebyshev'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=chebwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Triangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=triang(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Taylor'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=taylorwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
  end
case 'Gaussian'
dur=str2num(char(get(handles.edit22,'String')));
samp=str2num(char(get(handles.edit21,'String')));
a = str2num(char(get(handles.edit23,'String')));
p = str2num(char(get(handles.edit20,'String')));
f = str2num(char(get(handles.edit16,'String')));
start=str2num(char(get(handles.edit19,'String')));
windur=str2num(char(get(handles.edit17,'String')));
t=0:1/samp:dur;
x=a.*sin(2.*pi.*f.*t+p*pi/180);
filter=gausswin(windur*samp);
filter2=zeros(1,length(t));
filter2(start*samp+1:(start+windur)*samp)=filter;
y=x.*filter2;

figure; plot(t,y)
contents = get(handles.popupmenu6,'String');
 popupmenu6value = contents{get(handles.popupmenu6,'Value')};
  switch popupmenu6value
      case 'Rectangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=rectwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          xlim manual
          
         
         
          
          case 'Gaussian'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=gausswin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
          case 'Hamming'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hamming(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Hanning'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hann(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Tukey'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=tukeywin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Kaiser'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=kaiser(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Chebyshev'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=chebwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Triangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=triang(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Taylor'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=taylorwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
  end
case 'Hamming'
dur=str2num(char(get(handles.edit22,'String')));
samp=str2num(char(get(handles.edit21,'String')));
a = str2num(char(get(handles.edit23,'String')));
p = str2num(char(get(handles.edit20,'String')));
f = str2num(char(get(handles.edit16,'String')));
start=str2num(char(get(handles.edit19,'String')));
windur=str2num(char(get(handles.edit17,'String')));
t=0:1/samp:dur;
x=a.*sin(2.*pi.*f.*t+p*pi/180);
filter=hamming(windur*samp);
filter2=zeros(1,length(t));
filter2(start*samp+1:(start+windur)*samp)=filter;
y=x.*filter2;

figure; plot(t,y)
contents = get(handles.popupmenu6,'String');
 popupmenu6value = contents{get(handles.popupmenu6,'Value')};
  switch popupmenu6value
      case 'Rectangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=rectwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          xlim manual
          
         
         
          
          case 'Gaussian'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=gausswin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
          case 'Hamming'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hamming(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Hanning'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hann(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Tukey'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=tukeywin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Kaiser'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=kaiser(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Chebyshev'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=chebwin(winlen);
          row = ceil((1+fftn)/2);            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Triangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=triang(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Taylor'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=taylorwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
  end
case 'Tukey'
dur=str2num(char(get(handles.edit22,'String')));
samp=str2num(char(get(handles.edit21,'String')));
a = str2num(char(get(handles.edit23,'String')));
p = str2num(char(get(handles.edit20,'String')));
f = str2num(char(get(handles.edit16,'String')));
start=str2num(char(get(handles.edit19,'String')));
windur=str2num(char(get(handles.edit17,'String')));
t=0:1/samp:dur;
x=a.*sin(2.*pi.*f.*t+p*pi/180);
filter=tukeywin(windur*samp);
filter2=zeros(1,length(t));
filter2(start*samp+1:(start+windur)*samp)=filter;
y=x.*filter2;

figure; plot(t,y)
contents = get(handles.popupmenu6,'String');
 popupmenu6value = contents{get(handles.popupmenu6,'Value')};
  switch popupmenu6value
      case 'Rectangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=rectwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          xlim manual
          
         
         
          
          case 'Gaussian'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=gausswin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
          case 'Hamming'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hamming(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Hanning'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hann(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Tukey'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=tukeywin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Kaiser'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=kaiser(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Chebyshev'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=chebwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Triangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=triang(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Taylor'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=taylorwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
  end
case 'Triangular'
dur=str2num(char(get(handles.edit22,'String')));
samp=str2num(char(get(handles.edit21,'String')));
a = str2num(char(get(handles.edit23,'String')));
p = str2num(char(get(handles.edit20,'String')));
f = str2num(char(get(handles.edit16,'String')));
start=str2num(char(get(handles.edit19,'String')));
windur=str2num(char(get(handles.edit17,'String')));
t=0:1/samp:dur;
x=a.*sin(2.*pi.*f.*t+p*pi/180);
filter=triang(windur*samp);
filter2=zeros(1,length(t));
filter2(start*samp+1:(start+windur)*samp)=filter;
y=x.*filter2;

figure; plot(t,y)
contents = get(handles.popupmenu6,'String');
 popupmenu6value = contents{get(handles.popupmenu6,'Value')};
  switch popupmenu6value
      case 'Rectangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=rectwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          xlim manual
          
         
         
          
          case 'Gaussian'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=gausswin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
          case 'Hamming'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hamming(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Hanning'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hann(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Tukey'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=tukeywin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Kaiser'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=kaiser(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Chebyshev'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=chebwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Triangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=triang(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Taylor'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=taylorwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
  end
case 'Taylor'
dur=str2num(char(get(handles.edit22,'String')));
samp=str2num(char(get(handles.edit21,'String')));
a = str2num(char(get(handles.edit23,'String')));
p = str2num(char(get(handles.edit20,'String')));
f = str2num(char(get(handles.edit16,'String')));
start=str2num(char(get(handles.edit19,'String')));
windur=str2num(char(get(handles.edit17,'String')));
t=0:1/samp:dur;
x=a.*sin(2.*pi.*f.*t+p*pi/180);
filter=taylorwin(windur*samp);
filter2=zeros(1,length(t));
filter2(start*samp+1:(start+windur)*samp)=filter;
y=x.*filter2;

figure; plot(t,y)
contents = get(handles.popupmenu6,'String');
 popupmenu6value = contents{get(handles.popupmenu6,'Value')};
  switch popupmenu6value
      case 'Rectangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=rectwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          xlim manual
          
         
         
          
          case 'Gaussian'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=gausswin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
          case 'Hamming'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hamming(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Hanning'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hann(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Tukey'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=tukeywin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Kaiser'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=kaiser(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Chebyshev'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=chebwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Triangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=triang(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Taylor'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=taylorwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
  end
case 'Kaiser'
dur=str2num(char(get(handles.edit22,'String')));
samp=str2num(char(get(handles.edit21,'String')));
a = str2num(char(get(handles.edit23,'String')));
p = str2num(char(get(handles.edit20,'String')));
f = str2num(char(get(handles.edit16,'String')));
start=str2num(char(get(handles.edit19,'String')));
windur=str2num(char(get(handles.edit17,'String')));
t=0:1/samp:dur;
x=a.*sin(2.*pi.*f.*t+p*pi/180);
filter=kaiser(windur*samp);
filter2=zeros(1,length(t));
filter2(start*samp+1:(start+windur)*samp)=filter;
y=x.*filter2;

figure; plot(t,y)
contents = get(handles.popupmenu6,'String');
 popupmenu6value = contents{get(handles.popupmenu6,'Value')};
  switch popupmenu6value
      case 'Rectangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=rectwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          xlim manual
          
         
         
          
          case 'Gaussian'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=gausswin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
          case 'Hamming'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hamming(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Hanning'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hann(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Tukey'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=tukeywin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Kaiser'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=kaiser(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Chebyshev'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=chebwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Triangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=triang(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Taylor'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=taylorwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
  end
case 'Chebyshev'
dur=str2num(char(get(handles.edit22,'String')));
samp=str2num(char(get(handles.edit21,'String')));
a = str2num(char(get(handles.edit23,'String')));
p = str2num(char(get(handles.edit20,'String')));
f = str2num(char(get(handles.edit16,'String')));
start=str2num(char(get(handles.edit19,'String')));
windur=str2num(char(get(handles.edit17,'String')));
t=0:1/samp:dur;
x=a.*sin(2.*pi.*f.*t+p*pi/180);
filter=chebwin(windur*samp);
filter2=zeros(1,length(t));
filter2(start*samp+1:(start+windur)*samp)=filter;
y=x.*filter2;

figure; plot(t,y)
contents = get(handles.popupmenu6,'String');
 popupmenu6value = contents{get(handles.popupmenu6,'Value')};
  switch popupmenu6value
      case 'Rectangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=rectwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          xlim manual
          
         
         
          
          case 'Gaussian'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=gausswin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
          case 'Hamming'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hamming(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Hanning'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hann(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Tukey'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=tukeywin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Kaiser'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=kaiser(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Chebyshev'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=chebwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Triangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=triang(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Taylor'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=taylorwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
  end
  end



function edit24_Callback(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit24 as text
%        str2double(get(hObject,'String')) returns contents of edit24 as a double


% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit25_Callback(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit25 as text
%        str2double(get(hObject,'String')) returns contents of edit25 as a double


% --- Executes during object creation, after setting all properties.
function edit25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit26_Callback(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit26 as text
%        str2double(get(hObject,'String')) returns contents of edit26 as a double


% --- Executes during object creation, after setting all properties.
function edit26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit27_Callback(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit27 as text
%        str2double(get(hObject,'String')) returns contents of edit27 as a double


% --- Executes during object creation, after setting all properties.
function edit27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dur=str2num(char(get(handles.edit22,'String')));
samp=str2num(char(get(handles.edit21,'String')));
a = str2num(char(get(handles.edit18,'String')));
p = str2num(char(get(handles.edit27,'String')));
fi = str2num(char(get(handles.edit24,'String')));
bw=str2num(char(get(handles.edit25,'String')));
start=str2num(char(get(handles.edit40,'String')));
windur=str2num(char(get(handles.edit26,'String')));
t=0:1/samp:dur;
filter=zeros(1,length(t));
filter(start*samp+1:(start+windur)*samp+1)=1;
x=chirp(t,fi,dur,fi+bw);
y=x.*filter;

figure; plot(t,y)
contents = get(handles.popupmenu6,'String');
 popupmenu6value = contents{get(handles.popupmenu6,'Value')};
  switch popupmenu6value
      case 'Rectangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=rectwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          xlim manual
          
         
         
          
          case 'Gaussian'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=gausswin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
          case 'Hamming'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hamming(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Hanning'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hann(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Tukey'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=tukeywin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Kaiser'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=kaiser(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Chebyshev'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=chebwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Triangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=triang(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Taylor'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=taylorwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
  end





function edit28_Callback(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit28 as text
%        str2double(get(hObject,'String')) returns contents of edit28 as a double


% --- Executes during object creation, after setting all properties.
function edit28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit29_Callback(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit29 as text
%        str2double(get(hObject,'String')) returns contents of edit29 as a double


% --- Executes during object creation, after setting all properties.
function edit29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit30_Callback(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit30 as text
%        str2double(get(hObject,'String')) returns contents of edit30 as a double


% --- Executes during object creation, after setting all properties.
function edit30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit31_Callback(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit31 as text
%        str2double(get(hObject,'String')) returns contents of edit31 as a double


% --- Executes during object creation, after setting all properties.
function edit31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit32_Callback(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit32 as text
%        str2double(get(hObject,'String')) returns contents of edit32 as a double


% --- Executes during object creation, after setting all properties.
function edit32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit33_Callback(hObject, eventdata, handles)
% hObject    handle to edit33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit33 as text
%        str2double(get(hObject,'String')) returns contents of edit33 as a double


% --- Executes during object creation, after setting all properties.
function edit33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu5.
function popupmenu5_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu5


% --- Executes during object creation, after setting all properties.
function popupmenu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit34_Callback(hObject, eventdata, handles)
% hObject    handle to edit34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit34 as text
%        str2double(get(hObject,'String')) returns contents of edit34 as a double


% --- Executes during object creation, after setting all properties.
function edit34_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit35_Callback(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit35 as text
%        str2double(get(hObject,'String')) returns contents of edit35 as a double


% --- Executes during object creation, after setting all properties.
function edit35_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit36_Callback(hObject, eventdata, handles)
% hObject    handle to edit36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit36 as text
%        str2double(get(hObject,'String')) returns contents of edit36 as a double


% --- Executes during object creation, after setting all properties.
function edit36_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
contents = get(handles.popupmenu5,'String');
  popupmenu5value = contents{get(handles.popupmenu5,'Value')}
  switch popupmenu5value
      case '2'
dur=str2num(char(get(handles.edit22,'String')));
samp=str2num(char(get(handles.edit21,'String')));
a1 = str2num(char(get(handles.edit28,'String')));
p1 = str2num(char(get(handles.edit30,'String')));
f1 = str2num(char(get(handles.edit29,'String')));
a2 = str2num(char(get(handles.edit31,'String')));
p2 = str2num(char(get(handles.edit33,'String')));
f2 = str2num(char(get(handles.edit32,'String')));
t=0:1/samp:dur;
y=a1.*sin(2.*pi.*f1.*t+p1*pi/180)+a2.*sin(2.*pi.*f2.*t+p2*pi/180);

figure; plot(t,y)
contents = get(handles.popupmenu6,'String');
 popupmenu6value = contents{get(handles.popupmenu6,'Value')};
  switch popupmenu6value
      case 'Rectangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=rectwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          xlim manual
          
         
         
          
          case 'Gaussian'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=gausswin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
          case 'Hamming'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hamming(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Hanning'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hann(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Tukey'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=tukeywin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Kaiser'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=kaiser(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Chebyshev'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=chebwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Triangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=triang(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Taylor'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=taylorwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
  end
      case '3'
dur=str2num(char(get(handles.edit22,'String')));
samp=str2num(char(get(handles.edit21,'String')));
a1 = str2num(char(get(handles.edit28,'String')));
p1 = str2num(char(get(handles.edit30,'String')));
f1 = str2num(char(get(handles.edit29,'String')));
a2 = str2num(char(get(handles.edit31,'String')));
p2 = str2num(char(get(handles.edit33,'String')));
f2 = str2num(char(get(handles.edit32,'String')));
a3 = str2num(char(get(handles.edit36,'String')));
p3 = str2num(char(get(handles.edit34,'String')));
f3 = str2num(char(get(handles.edit35,'String')));
t=0:1/samp:dur;
y=a1.*sin(2.*pi.*f1.*t+p1*pi/180)+a2.*sin(2.*pi.*f2.*t+p2*pi/180)+a3.*sin(2.*pi.*f3.*t+p3*pi/180);

figure; plot(t,y)
contents = get(handles.popupmenu6,'String');
 popupmenu6value = contents{get(handles.popupmenu6,'Value')};
  switch popupmenu6value
      case 'Rectangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=rectwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          xlim manual
          
         
         
          
          case 'Gaussian'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=gausswin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
          case 'Hamming'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hamming(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Hanning'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=hann(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Tukey'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=tukeywin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Kaiser'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=kaiser(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Chebyshev'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=chebwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Triangular'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=triang(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
          
           case 'Taylor'
          shift=str2num(char(get(handles.edit37,'String')));
          winlen=str2num(char(get(handles.edit38,'String')));
          dur=str2num(char(get(handles.edit22,'String')));
          samp=str2num(char(get(handles.edit21,'String')));
          fftn=max(256,winlen);
          t=0:1/samp:dur;
          filter=taylorwin(winlen);
          row = ceil((1+fftn)/2)            
          column =1+fix((length(t)-winlen)/shift)      
          stft = zeros(row, column); % form the stft matrix
          i=0;
          stft=zeros(row,column);
          for c=1:column
              filter2=zeros(1,length(y));
              filter2(i+1:i+winlen)=filter;
              xw = y(i+1:i+winlen).*(filter2(i+1:i+winlen));
              yw=fft(xw);
              [m1,n1]=size(stft);
               [m2,n2]=size(yw);
              stft(:,c)=yw(1:row);
              [m1,n1]=size(stft);
              i=i+shift;
          end
          t=(winlen/2:winlen:winlen/2+(column-1)*winlen)/samp;
          f=(0:row-1)*samp/fftn;
         
        stft;
          
          figure; surf(f,t,transpose(10*log(abs(stft)))); shading interp; box on; view (0,90); axis xy; axis tight; colormap(jet); view(0,90);
          
          
         
         
          
          
          
          
         
         
  end
  end
          


% --- Executes on selection change in popupmenu6.
function popupmenu6_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu6


% --- Executes during object creation, after setting all properties.
function popupmenu6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit37_Callback(hObject, eventdata, handles)
% hObject    handle to edit37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit37 as text
%        str2double(get(hObject,'String')) returns contents of edit37 as a double


% --- Executes during object creation, after setting all properties.
function edit37_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit38_Callback(hObject, eventdata, handles)
% hObject    handle to edit38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit38 as text
%        str2double(get(hObject,'String')) returns contents of edit38 as a double


% --- Executes during object creation, after setting all properties.
function edit38_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit39_Callback(hObject, eventdata, handles)
% hObject    handle to edit39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit39 as text
%        str2double(get(hObject,'String')) returns contents of edit39 as a double


% --- Executes during object creation, after setting all properties.
function edit39_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit40_Callback(hObject, eventdata, handles)
% hObject    handle to edit40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit40 as text
%        str2double(get(hObject,'String')) returns contents of edit40 as a double


% --- Executes during object creation, after setting all properties.
function edit40_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
