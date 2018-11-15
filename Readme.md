<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx](./VB/Default.aspx))
<!-- default file list end -->
# ASPxRichEdit - How to get a selected text on the client side


This example demonstrates how to get selected text on the client side. The <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxRichEdit.ASPxRichEdit.class">ASPxRichEdit</a> <a href="https://documentation.devexpress.com/AspNet/116405/ASP-NET-WebForms-Controls/Rich-Text-Editor/Concepts/Client-API">client-side API</a> provides the <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxRichEdit.Scripts.ASPxClientRichEdit.selection.property">selection</a> property that allows you to select a text range in code or obtain the selected range's <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxRichEdit.Scripts.Interval.class">Interval</a> object. This object can be used to receive the selected text: all text is stored within sub-documents, following the <a href="https://documentation.devexpress.com/AspNet/117665/ASP-NET-WebForms-Controls/Rich-Text-Editor/Concepts/Client-API/Document-Model-Information">ASPxRichEdit document model structure</a>. Thus, get an active sub-document using the client-side <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxRichEdit.Scripts.ASPxClientRichEdit.document.property">document</a> property and use the text array to access the selected text range. If you need to receive all text in the active sub-document, you can get the entire text array.

<br/>


