# DownloadIssue

What is the desired behaviour here? 

## Steps

- $ mix phx.server   
- Browse and select file
- Restart web server
- On the browser click upload
- Observe logs


## Error found

    [error] GenServer #PID<0.559.0> terminating
    ** (KeyError) key "phx-FvYZ4GjyeITGVQXJ" not found in: %{"phx-FvYZ4v54EgGdQgAI" => :avatar}
        :erlang.map_get("phx-FvYZ4GjyeITGVQXJ", %{"phx-FvYZ4v54EgGdQgAI" => :avatar})
        (phoenix_live_view 0.17.10) lib/phoenix_live_view/upload.ex:186: Phoenix.LiveView.Upload.get_upload_by_ref!/2
        (phoenix_live_view 0.17.10) lib/phoenix_live_view/channel.ex:1148: anonymous fn/3 in Phoenix.LiveView.Channel.maybe_update_uploads/2
        (stdlib 4.0) maps.erl:411: :maps.fold_1/3
        (phoenix_live_view 0.17.10) lib/phoenix_live_view/channel.ex:213: Phoenix.LiveView.Channel.handle_info/2
        (stdlib 4.0) gen_server.erl:1120: :gen_server.try_dispatch/4
        (stdlib 4.0) gen_server.erl:1197: :gen_server.handle_msg/6
        (stdlib 4.0) proc_lib.erl:240: :proc_lib.init_p_do_apply/3
        Last message: %Phoenix.Socket.Message{event: "event", join_ref: "7", payload: %{"event" => "validate", "type" => "form", "uploads" => %{"phx-FvYZ4GjyeITGVQXJ" => [%{"name" => "Savings Account - Workflow - Frame 1.jpg", "path" => "avatar", "ref" => "0", "size" => 1353359, "type" => "image/jpeg"}]}, "value" => "_target=avatar"}, ref: "8", topic: "lv:phx-FvYZ4Fc6RncVJgCH"}
    State: %{components: {%{}, %{}, 1}, join_ref: "7", serializer: Phoenix.Socket.V2.JSONSerializer, socket: #Phoenix.LiveView.Socket<assigns: %{__changed__: %{}, flash: %{}, live_action: :index, page_title: "Listing Users", uploaded_files: [], uploads: %{__phoenix_refs_to_names__: %{"phx-FvYZ4v54EgGdQgAI" => :avatar}, avatar: #Phoenix.LiveView.UploadConfig<accept: ".jpg,.jpeg", auto_upload?: false, entries: [], errors: [], max_entries: 2, max_file_size: 8000000, name: :avatar, progress_event: nil, ref: "phx-FvYZ4v54EgGdQgAI", ...>}, user: nil}, endpoint: DownloadIssueWeb.Endpoint, id: "phx-FvYZ4Fc6RncVJgCH", parent_pid: nil, root_pid: #PID<0.559.0>, router: DownloadIssueWeb.Router, transport_pid: #PID<0.551.0>, view: DownloadIssueWeb.UserLive.Index, ...>, topic: "lv:phx-FvYZ4Fc6RncVJgCH", upload_names: %{}, upload_pids: %{}}
