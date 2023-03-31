function varargout = main_form(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_form_OpeningFcn, ...
                   'gui_OutputFcn',  @main_form_OutputFcn, ...
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
% Constructor
function main_form_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
function varargout = main_form_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;
% functions that change properties (unused)
function rgb2gray_p_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end%
function red_Callback(hObject, eventdata, handles)
function red_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end%
function green_Callback(hObject, eventdata, handles)
function green_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end%
function blue_Callback(hObject, eventdata, handles)
function blue_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end%
function threshold_Callback(hObject, eventdata, handles)
function threshold_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end%
function bright_Callback(hObject, eventdata, handles)
function bright_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end%
function bright_p_Callback(hObject, eventdata, handles)
function bright_p_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end%

function max_Callback(hObject, eventdata, handles)
function max_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end%
function min_Callback(hObject, eventdata, handles)
function min_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end%
function gamma_Callback(hObject, eventdata, handles)
function gamma_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end%
function f_h_Callback(hObject, eventdata, handles)
function f_h_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end%
function f_w_Callback(hObject, eventdata, handles)
function f_w_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end%
function sobel_robert_p_Callback(hObject, eventdata, handles)
function sobel_robert_p_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end%
function d0_Callback(hObject, eventdata, handles)
function d0_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end%
function s_m_Callback(hObject, eventdata, handles)
function s_m_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end%
function p_d_Callback(hObject, eventdata, handles)
function p_d_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end%
function a_Callback(hObject, eventdata, handles)
function a_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end%
function b_Callback(hObject, eventdata, handles)
function b_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end%
function all_p_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end%
%end of unused functions

%to choose an image file ( start of our functions)
function choose_btn1_Callback(hObject, eventdata, handles)
[FileName,FilePath]=uigetfile({'*.tif;*.jpg ;*.png ; *.gif ;*.tiff;*.psd;*.pdf;*.eps;*.ai;*.indd;*.raw;*.jpeg;*.bmp'
                               ,'select an image'});
if(~FileName==0)
handles.ImagePath = [FilePath,FileName];
old_im = imread(handles.ImagePath);
setappdata(0,'input',old_im);
setappdata(0,'default',old_im);
axes(handles.old_ax);
imshow(old_im);
set(handles.all_p,'Visible','on'); 
set(handles.lbl11,'Visible','on'); 
set(handles.get_res_btn,'Visible','on'); 
set(handles.clr_btn,'Visible','on');
end
% to change visibility on selection
function set_unvisible(handles)
    set(handles.rgb2gray_p,'Visible','off');
    set(handles.lbl1_1,'Visible','off');
    set(handles.lbl1_2,'Visible','off');
    set(handles.lbl1_3,'Visible','off');
    set(handles.lbl1_4,'Visible','off'); 
    set(handles.red,'Visible','off');
    set(handles.green,'Visible','off');
    set(handles.blue,'Visible','off');
    set(handles.lbl2,'Visible','off');
    set(handles.threshold,'Visible','off');
    set(handles.lbl8,'Visible','off'); 
    set(handles.bright_p,'Visible','off');
    set(handles.bright,'Visible','off');
    set(handles.lbl3_1,'Visible','off');
    set(handles.lbl3_2,'Visible','off');
    set(handles.min,'Visible','off');
    set(handles.max,'Visible','off');
    set(handles.lbl4,'Visible','off');
    set(handles.gamma,'Visible','off');
    set(handles.lbl5_1,'Visible','off');
    set(handles.lbl5_2,'Visible','off');
    set(handles.f_h,'Visible','off');
    set(handles.f_w,'Visible','off');
    set(handles.lbl6,'Visible','off');
    set(handles.d0,'Visible','off');
    set(handles.lbl7,'Visible','off');
    set(handles.filter_ax,'Visible','off');
    set(handles.a,'Visible','off');
    set(handles.b,'Visible','off');
    set(handles.s_m,'Visible','off');
    set(handles.p_d,'Visible','off');
    set(handles.lbl9_1,'Visible','off');
    set(handles.lbl9_2,'Visible','off');
    set(handles.lbl9_3,'Visible','off');
    set(handles.lbl9_4,'Visible','off');
    set(handles.lbl9_5,'Visible','off');
    set(handles.lbl9_6,'Visible','off');
function all_p_Callback(hObject, eventdata, handles)
opt = get(handles.all_p,'value');
if(opt==1) %RGB to Gray
    set_unvisible(handles);
    set(handles.rgb2gray_p,'Visible','on');
elseif(opt==2 || opt==3) %Gray or RGB to Binary
    set_unvisible(handles);
    set(handles.lbl2,'Visible','on');
    set(handles.threshold,'Visible','on');
elseif(opt==4) %change Brightness
    set_unvisible(handles);
    set(handles.bright_p,'Visible','on');
    set(handles.bright,'Visible','on');
elseif(opt==7) %contrast stretching
    set_unvisible(handles);
    set(handles.lbl3_1,'Visible','on');
    set(handles.lbl3_2,'Visible','on');
    set(handles.min,'Visible','on');
    set(handles.max,'Visible','on');
elseif(opt==10) %Gamma Power and root
        set_unvisible(handles);
        set(handles.lbl4,'Visible','on');
        set(handles.gamma,'Visible','on');
elseif(opt==12||opt == 18||opt == 19||opt == 20||opt == 21) %mean , min ,mid,med,max
        set_unvisible(handles);
        set(handles.lbl5_1,'Visible','on');
        set(handles.lbl5_2,'Visible','on');
        set(handles.f_h,'Visible','on');
        set(handles.f_w,'Visible','on');
elseif(opt==22||opt == 23||opt == 24||opt == 25||opt == 26||opt == 27) % frequency filters
        set_unvisible(handles);
        set(handles.lbl6,'Visible','on');
        set(handles.d0,'Visible','on');
        set(handles.lbl7,'Visible','on');
        set(handles.filter_ax,'Visible','on');
elseif(opt==28) %salt and pepper
    set_unvisible(handles);
    set(handles.s_m,'Visible','on');
    set(handles.p_d,'Visible','on');
    set(handles.lbl9_1,'Visible','on');
    set(handles.lbl9_2,'Visible','on');
elseif(opt==29) %Gaussian
    set_unvisible(handles);
    set(handles.s_m,'Visible','on');
    set(handles.p_d,'Visible','on');
    set(handles.lbl9_3,'Visible','on');
    set(handles.lbl9_4,'Visible','on');
elseif(opt==30||opt==31||opt==32||opt==33) %Uinform , Rayleigh,Exponential,Gamma
    set_unvisible(handles);
    set(handles.a,'Visible','on');
    set(handles.lbl9_5,'Visible','on');
    if(opt~=32)
        set(handles.lbl9_6,'Visible','on'); 
        set(handles.b,'Visible','on');
    end
else
    set_unvisible(handles);
end

function rgb2gray_p_Callback(hObject, eventdata, handles)
opt10 = get(handles.rgb2gray_p,'value');
if(opt10==5)
    set(handles.lbl1_1,'Visible','on');
    set(handles.lbl1_2,'Visible','on');
    set(handles.lbl1_3,'Visible','on');
    set(handles.red,'Visible','on');
    set(handles.green,'Visible','on');
    set(handles.blue,'Visible','on');
else
    set(handles.lbl1_1,'Visible','off');
    set(handles.lbl1_2,'Visible','off');
    set(handles.lbl1_3,'Visible','off');
    set(handles.red,'Visible','off');
    set(handles.green,'Visible','off');
    set(handles.blue,'Visible','off');
end

%function that calls image processing functions after selection
function get_res_btn_Callback(hObject, eventdata, handles)
old_i = getappdata(0,'input');
err = 0;
frequ =0;
switch(get(handles.all_p,'value'))
    case 1 %RGB to Gray
        opt1 = get(handles.rgb2gray_p,'value');
        if(opt1==5) %percentages
            r = str2double(get(handles.red,'string'));
            g = str2double(get(handles.green,'string'));
            b = str2double(get(handles.blue,'string'));
            if(isnan(r)||isnan(g)||isnan(b))
                warndlg('Please Enter numeric inputs!');
                err = 1;
            elseif(r+g+b~=1)
                warndlg('sum of Percentages must equal 1!');
                err = 1;
            else
                res_img = rgbto2gray(old_i,r,g,b);
            end
        else  %red,green,blue,sum/3
            res_img = rgbtogray(old_i,opt1);
        end
    case 2 %Gray to Binary
        thr = str2double(get(handles.threshold,'string'));
        if(isnan(thr))
             warndlg('Please Enter numeric input!');
             err = 1;
        elseif(thr>255||thr<0)
             warndlg('Threshold is out of range!');
             err = 1;
        else
            res_img = graytobinary(old_i,thr);
        end
    case 3 %RGB to Binary
        thr = str2double(get(handles.threshold,'string'));
        if(isnan(thr))
             warndlg('Please Enter numeric input!');
             err = 1;
        elseif(thr>255||thr<0)
             warndlg('Threshold is out of range!');
             err = 1;
        else
            res_img =rgbto2gray(old_i,0.3,0.3,0.4);
            res_img=graytobinary(res_img,thr);
        end
    case 4 %Brightness
        num = str2double(get(handles.bright,'string'));
        opt11 = get(handles.bright_p,'value')-1;
        if(isnan(num))
             warndlg('Please Enter numeric input!');
             err = 1;
        else
                res_img =change_brightness(old_i,opt11,num);
        end
    case 5 %negative
        res_img =log_invlog(old_i,3);
    case 6 %histogram
        res_hist = calc_hist(old_i);
        err = 1;
    case 7 %contrast stretching
        n_min = str2double(get(handles.min,'string'));
        n_max = str2double(get(handles.max,'string'));
        if(isnan(n_min)||isnan(n_max))
             warndlg('Please Enter numeric input!');
             err = 1;
        elseif(n_min>n_max)
            warndlg('Min > Max !');
            err = 1;
        else
            res_img = cont_stretch(old_i,n_min,n_max);
        end
    case 8 %log
        res_img =log_invlog(old_i,1);
    case 9 %inverse log (exp)
        res_img =log_invlog(old_i,2);
    case 10 %gamma (power or root)
        gam = str2double(get(handles.gamma,'string'));
        if(isnan(gam))
             warndlg('Please Enter numeric input!');
             err = 1;
        else
            res_img = gamma_pow_root(old_i,gam);
        end
    case 11 %histogram equalization
        res_img = equalization(old_i);
    case 12 % mean filter
        fh=str2double(get(handles.f_h,'string'));
        fw=str2double(get(handles.f_w,'string'));
        if(isnan(fh)||isnan(fw))
             warndlg('Please Enter numeric input!');
             err = 1;
        else
            res_img = Mean(old_i,fh,fw);
        end        
    case 13 % weighted filter        
        res_img = weighted_filter(old_i);       
    case 14 % Point Detection ( Laplacian)       
        res_img = point_detection(old_i);       
    case 15 % Line Detection (Sobel)
        res_img = line_detection(old_i,1);       
    case 16 % Point Sharpening (Laplacian + Img)        
        res_img = point_sharpening(old_i);        
    case 17 % Line Sharpening (Robert)        
        res_img = line_detection(old_i,2);
    case 18 % Min Filter        
        fh=str2double(get(handles.f_h,'string'));
        fw=str2double(get(handles.f_w,'string'));
        if(isnan(fh)||isnan(fw))
             warndlg('Please Enter numeric input!');
             err = 1;
        else
            res_img = min_mid_med_max(old_i,fh,fw,1);
        end        
    case 19 % midpoint Filter        
        fh=str2double(get(handles.f_h,'string'));
        fw=str2double(get(handles.f_w,'string'));
        if(isnan(fh)||isnan(fw))
             warndlg('Please Enter numeric input!');
             err = 1;
        else
            res_img = min_mid_med_max(old_i,fh,fw,2);
        end        
    case 20 % median Filter       
        fh=str2double(get(handles.f_h,'string'));
        fw=str2double(get(handles.f_w,'string'));
        if(isnan(fh)||isnan(fw))
             warndlg('Please Enter numeric input!');
             err = 1;
        else
            res_img = min_mid_med_max(old_i,fh,fw,3);
        end        
    case 21 % Max Filter      
        fh=str2double(get(handles.f_h,'string'));
        fw=str2double(get(handles.f_w,'string'));
        if(isnan(fh)||isnan(fw))
             warndlg('Please Enter numeric input!');
             err = 1;
        else
            res_img = min_mid_med_max(old_i,fh,fw,4);
        end       
    case 22 % Ideal Lowpass Filter      
        d0=str2double(get(handles.f_h,'string'));
        if(isnan(d0))
             warndlg('Please Enter numeric input!');
             err = 1;
        else
            frequ = 1;
            [res_img,filter] = freq_filter(old_i,d0,1);
        end       
    case 23 % Butter Worth Lowpass Filter       
        d0=str2double(get(handles.f_h,'string'));
        if(isnan(d0))
             warndlg('Please Enter numeric input!');
             err = 1;
        else
            frequ = 1;
            [res_img,filter] = freq_filter(old_i,d0,2);
        end       
    case 24 % Gaussian Lowpass Filter        
        d0=str2double(get(handles.f_h,'string'));
        if(isnan(d0))
             warndlg('Please Enter numeric input!');
             err = 1;
        else
            frequ = 1;
            [res_img,filter] = freq_filter(old_i,d0,3);
        end       
    case 25 % Ideal Highpass Filter      
        d0=str2double(get(handles.f_h,'string'));
        if(isnan(d0))
             warndlg('Please Enter numeric input!');
             err = 1;
        else
            frequ = 1;
            [res_img,filter] = freq_filter(old_i,d0,4);
        end      
    case 26 % Butter Worth Highpass Filter      
        d0=str2double(get(handles.f_h,'string'));
        if(isnan(d0))
             warndlg('Please Enter numeric input!');
             err = 1;
        else
            frequ = 1;
            [res_img,filter] = freq_filter(old_i,d0,5);
        end      
    case 27 % Gaussian Highpass Filter      
        d0=str2double(get(handles.f_h,'string'));
        if(isnan(d0))
             warndlg('Please Enter numeric input!');
             err = 1;
        else
            frequ = 1;
            [res_img,filter] = freq_filter(old_i,d0,6);
        end     
    case 28 % Salt & Pepper Noise
        ps=str2double(get(handles.s_m,'string'));
        pp=str2double(get(handles.p_d,'string'));
        if(isnan(ps)||isnan(pp))
             warndlg('Please Enter numeric input!');
             err = 1;
        elseif(ps+pp>1)
            warndlg('sum of inputs must equal 1 or less!');
             err = 1;
        else
            res_img = salt_pepper(old_i,ps,pp);
        end 
    case 29 % Gaussian Noise
        mean=str2double(get(handles.s_m,'string'));
        sd=str2double(get(handles.p_d,'string'));
        if(isnan(mean)||isnan(sd))
             warndlg('Please Enter numeric input!');
             err = 1;
        elseif(mean+sd>1)
            warndlg('sum of inputs must equal 1 or less!');
             err = 1;
        else
            res_img = gaussiann(old_i,mean,sd);
        end 
    case 30 % Uniform Noise
        a=str2double(get(handles.a,'string'));
        b=str2double(get(handles.b,'string'));
        if(isnan(a)||isnan(b))
             warndlg('Please Enter numeric input!');
             err = 1;
        else
            res_img = uniform(old_i,a,b);
        end 
    case 31 % Rayleigh Noise
         a=str2double(get(handles.a,'string'));
        b=str2double(get(handles.b,'string'));
        if(isnan(a)||isnan(b))
             warndlg('Please Enter numeric input!');
             err = 1;
        else
            res_img = rayleiph(old_i,a,b);
        end 
    case 32 % Exponential Noise
         a=str2double(get(handles.a,'string'));
        if(isnan(a))
             warndlg('Please Enter numeric input!');
             err = 1;
        else
            res_img = exponen(old_i,a);
        end 
    case 33 % Gamma Noise
        a=str2double(get(handles.a,'string'));
        b=str2double(get(handles.b,'string'));
        if(isnan(a)||isnan(b))
             warndlg('Please Enter numeric input!');
             err = 1;
        else
            res_img = gamma1(old_i,a,b);
        end 
end
if(err==0)
    setappdata(0,'output',res_img);
    axes(handles.res_ax);
    imshow(res_img);
    if(frequ == 1)
        setappdata(0,'dft_filter',filter);
        axes(handles.filter_ax);
        imshow(filter);
    end
    set(handles.next_btn,'Visible','on');
end

function next_btn_Callback(hObject, eventdata, handles)
temp_img = getappdata(0,'output');
setappdata(0,'input',temp_img);
axes(handles.old_ax);
imshow(temp_img);


% --- Executes on button press in clr_btn.
function clr_btn_Callback(hObject, eventdata, handles)
axes(handles.res_ax);
cla;
axes(handles.filter_ax);
cla;
set_unvisible(handles);
defaul = getappdata(0,'default');
axes(handles.old_ax);
imshow(defaul);


function exit_btn_Callback(hObject, eventdata, handles)
close(main_form);
