<!-- BEGIN TEMPLATE move_form.tpl -->
<div class="generic">
    <form method="POST" action="{URL->ACTION}">
        {POST_VARS}
        <input type="hidden" name="thread" value="{FORM->thread_id}" />
        <input type="hidden" name="mod_step" value="{FORM->mod_step}" />
        <p>{LANG->MoveThreadTo}:</p>
        <strong>{FORM->subject}</strong>
        <p><select name="moveto">
            <option value="0">{LANG->SelectForum}</option>
                {LOOP FORUMS}
                    {IF FORUMS->folder_flag}
                        <optgroup label="{FORUMS->indent_spaces}{FORUMS->name}"></optgroup>
                    {ELSE}
                        <option value="{FORUMS->forum_id}"{IF FORUMS->selected} selected="selected"{/IF}>{FORUMS->indent_spaces}{FORUMS->name}</option>
                    {/IF}
                {/LOOP FORUMS}
        </select></p>
        <p><input type="checkbox" name="create_notification" id="create-notification" value="1" /><label for="create-notification">{LANG->MoveNotification}</label></p>
        <input type="submit" name="move" value="{LANG->MoveThread}" />
    </form>
</div>
<!-- END TEMPLATE move_form.tpl -->
