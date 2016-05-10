<body>
	<div>
		<ul id="treeDemo" class="ztree">  
        </ul> 
	</div>
	    <script type="text/javascript">  
        var setting = {  
            view: {  
                selectedMulti: false        //禁止多点选中  
            },  
            data: {  
                simpleData: {  
                    enable:true,  
                    idKey: "id",  
                    pIdKey: "pId",  
                    rootPId: ""  
                }  
            },  
            callback: {  
                onClick: function(treeId, treeNode) {  
                    var treeObj = $.fn.zTree.getZTreeObj(treeNode);  
                    var selectedNode = treeObj.getSelectedNodes()[0];  
                    $("#txtId").val(selectedNode.id);  
                    $("#txtAddress").val(selectedNode.name);  
                }  
            }  
        };  
        var zNodes =[  
            {id:1, pId:0, name:"广东", open:true},  
            {id:101, pId:1, name:"广州", url:"http://www.baidu.com"},  
            {id:102, pId:1, name:"深圳", url:"#",target:"_self"},  
            {id:103, pId:1, name:"东莞", url:"#",target:"_self"},
            {id:104, pId:102, name:"小县城", url:"#",target:"_self"}    
        ];  
  
        $(document).ready(function(){  
            $.fn.zTree.init($("#treeDemo"), setting, zNodes);  
        });  
    </script>  
</body>