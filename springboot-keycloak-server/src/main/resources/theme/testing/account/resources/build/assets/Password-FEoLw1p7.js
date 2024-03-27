import{r as a,j as s}from"./index-CAmiuzXs.js";import{c as v}from"./useGetClassName-I7XXwiyH.js";import{u as T}from"./useGetClassName-CCqDzdPG.js";function D(C){var n;const{kcContext:c,i18n:u,doUseDefaultCss:w,Template:O,classes:o}=C,{getClassName:l}=T({doUseDefaultCss:w,classes:Object.assign(Object.assign({},o),{kcBodyClass:v(o==null?void 0:o.kcBodyClass,"password")})}),{url:P,password:p,account:y,stateChecker:k}=c,{msgStr:j,msg:r}=u,[g,S]=a.useState(""),[d,B]=a.useState(""),[h,E]=a.useState(""),[i,f]=a.useState(""),[m,b]=a.useState(""),[F,H]=a.useState(!1),[A,R]=a.useState(!1),N=e=>{p.passwordSet&&f(e===g?j("newPasswordSameAsOld"):"")},x=e=>{e!==""&&b(d!==e?j("passwordConfirmNotMatch"):"")};return s.jsxs(O,Object.assign({},{kcContext:Object.assign(Object.assign({},c),{message:i!==""?{type:"error",summary:i}:m!==""?{type:"error",summary:m}:c.message}),i18n:u,doUseDefaultCss:w,classes:o},{active:"password"},{children:[s.jsxs("div",Object.assign({className:"row"},{children:[s.jsx("div",Object.assign({className:"col-md-10"},{children:s.jsx("h2",{children:r("changePasswordHtmlTitle")})})),s.jsx("div",Object.assign({className:"col-md-2 subtitle"},{children:s.jsx("span",Object.assign({className:"subtitle"},{children:r("allFieldsRequired")}))}))]})),s.jsxs("form",Object.assign({action:P.passwordUrl,className:"form-horizontal",method:"post"},{children:[s.jsx("input",{type:"text",id:"username",name:"username",value:(n=y.username)!==null&&n!==void 0?n:"",autoComplete:"username",readOnly:!0,style:{display:"none"}}),p.passwordSet&&s.jsxs("div",Object.assign({className:"form-group"},{children:[s.jsx("div",Object.assign({className:"col-sm-2 col-md-2"},{children:s.jsx("label",Object.assign({htmlFor:"password",className:"control-label"},{children:r("password")}))})),s.jsx("div",Object.assign({className:"col-sm-10 col-md-10"},{children:s.jsx("input",{type:"password",className:"form-control",id:"password",name:"password",autoFocus:!0,autoComplete:"current-password",value:g,onChange:e=>S(e.target.value)})}))]})),s.jsx("input",{type:"hidden",id:"stateChecker",name:"stateChecker",value:k}),s.jsxs("div",Object.assign({className:"form-group"},{children:[s.jsx("div",Object.assign({className:"col-sm-2 col-md-2"},{children:s.jsx("label",Object.assign({htmlFor:"password-new",className:"control-label"},{children:r("passwordNew")}))})),s.jsx("div",Object.assign({className:"col-sm-10 col-md-10"},{children:s.jsx("input",{type:"password",className:"form-control",id:"password-new",name:"password-new",autoComplete:"new-password",value:d,onChange:e=>{const t=e.target.value;B(t),F&&N(t)},onBlur:()=>{H(!0),N(d)}})}))]})),s.jsxs("div",Object.assign({className:"form-group"},{children:[s.jsx("div",Object.assign({className:"col-sm-2 col-md-2"},{children:s.jsx("label",Object.assign({htmlFor:"password-confirm",className:"control-label two-lines"},{children:r("passwordConfirm")}))})),s.jsx("div",Object.assign({className:"col-sm-10 col-md-10"},{children:s.jsx("input",{type:"password",className:"form-control",id:"password-confirm",name:"password-confirm",autoComplete:"new-password",value:h,onChange:e=>{const t=e.target.value;E(t),A&&x(t)},onBlur:()=>{R(!0),x(h)}})}))]})),s.jsx("div",Object.assign({className:"form-group"},{children:s.jsx("div",Object.assign({id:"kc-form-buttons",className:"col-md-offset-2 col-md-10 submit"},{children:s.jsx("div",{children:s.jsx("button",Object.assign({disabled:i!==""||m!=="",type:"submit",className:v(l("kcButtonClass"),l("kcButtonPrimaryClass"),l("kcButtonLargeClass")),name:"submitAction",value:"Save"},{children:r("doSave")}))})}))}))]}))]}))}export{D as default};
//# sourceMappingURL=Password-FEoLw1p7.js.map
