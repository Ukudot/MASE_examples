import{j as s}from"./index-CAmiuzXs.js";function u(o){const{kcContext:a,i18n:r,doUseDefaultCss:t,Template:l,classes:n}=o,{url:d,password:i,account:c,stateChecker:m}=a,{msg:e}=r;return s.jsxs(l,{kcContext:a,i18n:r,doUseDefaultCss:t,classes:n,active:"password",children:[s.jsxs("div",{className:"row d-flex align-items-center",children:[s.jsx("div",{className:"col-md-8",children:s.jsx("h2",{children:e("changePasswordHtmlTitle")})}),s.jsx("div",{className:"col-md-4 subtitle",children:s.jsx("span",{className:"subtitle",children:e("allFieldsRequired")})})]}),s.jsxs("form",{action:d.passwordUrl,className:"form-horizontal mt-3",method:"post",children:[s.jsx("input",{type:"text",id:"username",name:"username",value:c.username??"",autoComplete:"username",readOnly:!0,style:{display:"none"}}),i.passwordSet&&s.jsxs("div",{className:"form-group",children:[s.jsx("label",{className:"active control-label",htmlFor:"password",children:e("password")}),s.jsx("input",{type:"password",className:"form-control",id:"password",name:"password",autoComplete:"current-password"})]}),s.jsx("input",{type:"hidden",id:"stateChecker",name:"stateChecker",value:m}),s.jsxs("div",{className:"form-group",children:[s.jsx("label",{className:"active control-label",htmlFor:"password-new",children:e("passwordNew")}),s.jsx("input",{type:"password",className:"form-control",id:"password-new",name:"password-new",autoComplete:"new-password","aria-describedby":"formGroupExampleInputWithHelpDescription"})]}),s.jsxs("div",{className:"form-group",children:[s.jsx("label",{className:"active control-label",htmlFor:"password-confirm",children:e("passwordConfirm")}),s.jsx("input",{type:"password",className:"form-control",id:"password-confirm",name:"password-confirm",autoComplete:"new-password"})]}),s.jsx("div",{className:"form-group",children:s.jsx("div",{id:"kc-form-buttons",className:"submit",children:s.jsx("div",{className:"d-flex justify-content-end",children:s.jsx("button",{type:"submit",className:"btn btn-primary",name:"submitAction",value:"Save",children:e("doSave")})})})})]})]})}export{u as default};
//# sourceMappingURL=Password-C_IjWslD.js.map
