%rebase('base.tpl')
<ul class="collapsible" data-collapsible="accordion">
% for name in names:
    <li>
        <div class="collapsible-header"> <a href="{{name}}"> {{name}} </a> </div>
        <div class="collapsible-body"> <p> info about {{name}} </p> </div>

    </li>
% end
</ul>