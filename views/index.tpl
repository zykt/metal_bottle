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
        </div>
      </div>
      <div class="collapsible-body">
        <div class="row">
          <div class="col s4">
            <blockquote> info about {{band['description']}} </blockquote>
          </div>
          <div class="col s2">
            <a class="btn" target="_blank"
               href="http://metal-archives.com/search?searchString={{band['name']}}&type=band_name">
              Metal Archives
            </a>
          </div>
          <div class="col s2">
            <a class="btn" target="_blank" href="https://www.youtube.com/results?search_query={{band['name']}} band">
              youtube
            </a>
          </div>
        </div>
      </div>
    </li>
    % end
  </ul>
</div>