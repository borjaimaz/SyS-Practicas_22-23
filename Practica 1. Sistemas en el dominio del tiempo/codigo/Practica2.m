function varargout = Practica2(varargin)
% PRACTICA2 M-file for Practica2.fig
%      PRACTICA2, by itself, creates a new PRACTICA2 or raises the existing
%      singleton*.
%
%      H = PRACTICA2 returns the handle to a new PRACTICA2 or the handle to
%      the existing singleton*.
%
%      PRACTICA2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRACTICA2.M with the given input arguments.
%
%      PRACTICA2('Property','Value',...) creates a new PRACTICA2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Practica2_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Practica2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.
% License GPL-3.0-or-later
% Edit the above text to modify the response to help Practica2

% Last Modified by GUIDE v2.5 16-Jul-2004 11:32:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Practica2_OpeningFcn, ...
                   'gui_OutputFcn',  @Practica2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
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


% --- Executes just before Practica2 is made visible.
function Practica2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Practica2 (see VARARGIN)

% Choose default command line output for Practica2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Practica2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


%Añadimos el directorio de trabajo
addpath archivos

%Pintamos el logo de la URJC
axes(handles.ejes_logo);
image(imread('logoURJC2.jpg'))
set(handles.ejes_logo,'XTick',[]);
set(handles.ejes_logo,'YTick',[]);




% --- Outputs from this function are returned to the command line.
function varargout = Practica2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Grupo_Callback(hObject, eventdata, handles)
% hObject    handle to Grupo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Grupo as text
%        str2double(get(hObject,'String')) returns contents of Grupo as a double


% --- Executes during object creation, after setting all properties.
function Grupo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Grupo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Puesto_Callback(hObject, eventdata, handles)
% hObject    handle to Puesto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Puesto as text
%        str2double(get(hObject,'String')) returns contents of Puesto as a double


% --- Executes during object creation, after setting all properties.
function Puesto_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Puesto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Aula_Callback(hObject, eventdata, handles)
% hObject    handle to Aula (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Aula as text
%        str2double(get(hObject,'String')) returns contents of Aula as a double


% --- Executes during object creation, after setting all properties.
function Aula_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Aula (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on button press in Comenzar.
function Comenzar_Callback(hObject, eventdata, handles)
% hObject    handle to Comenzar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

comenzar = 0;

try,
    comenzar = 1;
    
    %Obtenemos los valores
    val_grupo = str2double(get(handles.Grupo,'String'));
    val_aula = str2double(get(handles.Aula,'String'));
    val_puesto = str2double(get(handles.Puesto,'String'));
    
    %Comprobamos si los valores introducidos son incorrectos
    if val_grupo == NaN | val_aula == NaN | val_puesto == NaN
        %No son números
        comenzar = 0;
        mensaje = strvcat('      Rellene todos los campos y      ','    asegúrese de que ha introducido      ','    únicamente números');
        msgbox(mensaje,'Error');
    elseif mod(val_grupo,1) ~= 0 | mod(val_aula,1) ~= 0 | mod(val_puesto,1) ~= 0
        %Son números, pero no son enteros
        comenzar = 0;
        mensaje = strvcat('     Los valores introducidos       ','     deben ser números enteros');
        msgbox(mensaje,'Error');
    elseif val_grupo > 2 | val_aula > 20 | val_puesto > 60
        %Son números enteros fuera del rango
        comenzar = 0;
        mensaje = strvcat('      El rango de los valores      ','       es incorrecto');
        msgbox(mensaje,'Error');
    end
    
    %Calculamos Jstate (lo utilizaremos fuera del try
    Jstate = val_grupo*10000 + val_aula*100 + val_puesto;

catch,
    %Hemos capturado un error grave distinto de los anteriores
    comenzar = 0;
    mensaje = strvcat('    Ha ocurrido un error grave,      ','       revise sus valores');
    msgbox(mensaje,'Error');
end

if comenzar == 1
    %Sembramos la semilla del generador de numeros aleatorios y llamamos al programa incial
    rand('state', Jstate);
    %%%%%
    close(gcf)
    PracticaSyC2(Jstate)
end
