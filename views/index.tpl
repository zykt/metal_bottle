%rebase('base.tpl')
<ul class="collapsible" data-collapsible="accordion">
% for band in bands:
    <li>
        <div class="collapsible-header"> <a href="{{band['name']}}"> {{band['name']}} </a> </div>
        <div class="collapsible-body"> <p> info about {{band['description']}} </p> </div>
    </li>
% end
</ul>