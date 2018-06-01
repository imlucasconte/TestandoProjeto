$(document).ready(function(){

  $('#telefone').on('focus',function(){
    $(this).mask("(99) 9999-9999?9");
    $(this).on('keyup',function(){
        var tamanho=$(this).val();
        var numStr=tamanho.replace(/[^0-9]/g,'');
        var numStr2=numStr.length;
        if(numStr2 == 11){ $(this).mask("(99) 99999-999?9"); }
        else if (numStr2==10){ $(this).mask("(99) 9999-9999?9");
        }
    });
});

});
