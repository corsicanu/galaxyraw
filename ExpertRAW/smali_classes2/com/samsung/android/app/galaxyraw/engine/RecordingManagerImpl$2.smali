.class Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "RecordingManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$RecordingManagerImpl$2()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$700(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    const v0, 0x7f1203df

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecordingManagerImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$400(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "onReceive return - RecordingManager is unregistered"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$800(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "onReceive return - MediaRecorderProfile is null"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "camera.action.VIDEO_CAPABILITY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "camera.action.LIMIT_RECORDING_SEAMLESS_ZOOM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "camera.action.CALL_STATE_OFFHOOK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "camera.action.SHUTDOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_4
    const-string v2, "camera.action.OVERHEAT_LEVEL_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_5
    const-string v2, "camera.action.CALL_STATE_RINGING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "camera.action.CALL_STATE_IDLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_7
    const-string v2, "camera.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_8
    const-string v2, "camera.action.AUDIOFOCUS_LOSS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_9
    const-string v2, "camera.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    move v1, v4

    goto :goto_0

    :sswitch_a
    const-string v2, "camera.action.WIFI_DISPLAY_NOT_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    move v1, v3

    :goto_0
    const-wide/16 v5, 0x3e8

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {p0, v4}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$1302(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;Z)Z

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-ne p1, p2, :cond_d

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getTotalRecordingTimeInMs()J

    move-result-wide p1

    div-long/2addr p1, v5

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->MAX_SEAMLESS_ZOOM_RECORDING_TIME_LIMIT_IN_OVERHEAT_CONDITION:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v0

    int-to-long v0, v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_d

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$900(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result p1

    const/16 p2, 0x14

    if-ne p1, p2, :cond_d

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$1000(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$700(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->getInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->isTemperatureHighToDualRecord()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->disableRecordingSeamlessZoom(Z)V

    goto/16 :goto_1

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {p0, v4}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$1200(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;Z)V

    goto/16 :goto_1

    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$400(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;->onStopRecordingRequested()V

    goto/16 :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-ne p1, p2, :cond_d

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getTotalRecordingTimeInMs()J

    move-result-wide p1

    div-long/2addr p1, v5

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->MIN_RECORDING_TIME_TO_ENABLE_LOW_POWER_MODE:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v0

    int-to-long v0, v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_d

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$700(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->getInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->getOverheatLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->setRecordingOverheatLevel(I)V

    goto/16 :goto_1

    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$700(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$700(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$2$noezeEzss4HGUCM6WkEH5Arf32I;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$2$noezeEzss4HGUCM6WkEH5Arf32I;-><init>(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :pswitch_6
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {p0, v3}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$1200(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;Z)V

    goto :goto_1

    :pswitch_7
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_d

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$900(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$900(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderExternalStorageAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$400(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;->onCancelRecordingRequested()V

    goto :goto_1

    :pswitch_8
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->isVTCallOngoing(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$400(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;->onStopRecordingRequested()V

    goto :goto_1

    :pswitch_9
    const-string p1, "microphone_plugged"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$1100(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)V

    goto :goto_1

    :pswitch_a
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {p0, v4}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$1402(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;Z)Z

    :cond_d
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3b27fe5c -> :sswitch_a
        -0x37e00a46 -> :sswitch_9
        -0x322c7c4f -> :sswitch_8
        -0x215f7beb -> :sswitch_7
        -0x19ce236c -> :sswitch_6
        -0x16cd912e -> :sswitch_5
        0x98cea2d -> :sswitch_4
        0x210cbe45 -> :sswitch_3
        0x44f10232 -> :sswitch_2
        0x4ac0935a -> :sswitch_1
        0x7a5bfc6b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
