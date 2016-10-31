%rebase('base.tpl')
<div class="container">
  <ul class="collapsible" data-collapsible="accordion">
    % for band in bands:
    <li>
      <div class="collapsible-header">
        <div class="row">
          <div class="col s2">
            <a href="{{band['name']}}"> {{band['name']}} </a>
          </div>
          <div class="col s2">
            <a class="btn-flat" target="_blank"
               href="http://www.metal-archives.com/search?searchString={{band['name']}}&type=band_name">Metal Archives</a>
          </div>
        </div>
      </div>
      <div class="collapsible-body"><p> info about {{band['description']}} </p></div>
    </li>
    % end
  </ul>
</div>