<%namespace name="dplace" file="../dplace_util.mako"/>

% if ctx.description:
    <div class="alert">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <small><i>${ctx.description}</i></small>
    </div>
% endif

% if ctx.domain:
    ${dplace.codes_table(ctx, with_head=True, with_icon=True, with_repr=True, title_attr='name')}
% elif 'range' in ctx.jsondata or {}:
    <table>
        % for number, color in ctx.jsondata['range']:
            <tr>
                <td>
                    % if loop.first or loop.last:
                        ${number}
                    % endif
                    &nbsp;
                </td>
                <td style="background-color: ${color}">&nbsp;&nbsp;&nbsp;</td>
            </tr>
        % endfor
    </table>
% endif
