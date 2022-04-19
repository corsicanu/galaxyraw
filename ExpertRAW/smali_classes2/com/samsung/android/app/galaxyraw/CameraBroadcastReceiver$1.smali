.class Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getHeadsetPlugIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const-string p0, "microphone"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "camera.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "state"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v2, "microphone_plugged"

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    if-ne p0, v3, :cond_0

    const-string p0, "CameraBroadcastReceiver"

    const-string p1, "Headset with microphone is plugged"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    return-object v1
.end method

.method private handleLocationModeChanged()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->getInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->setLocationRequest()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->getInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->stopReceivingLocationUpdates()V

    :cond_2
    :goto_0
    return-void
.end method

.method private handlePhysicalKeyDoubleClicked(Landroid/content/Intent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FUNCTION_KEY_MENU_AT_GLOBAL_SETTINGS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "KEYCODE"

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HOME_KEY_QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FUNCTION_KEY_MENU_AT_GLOBAL_SETTINGS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POWER_KEY_QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCommandReceiver()Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->FUNCTION_KEY_DOUBLE_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;->onSwitchCameraSelect(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    :cond_4
    return-void
.end method

.method private handleScreenRatioValueChanged(Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selfie_tone_camera"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->finish()V

    goto :goto_0

    :cond_0
    const-string v0, "screenratiovalue"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleScreenRatioValueChanged : Camera will be recreated because screen ratio is changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraBroadcastReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->recreate()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
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

    const-string v2, "onReceive ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraBroadcastReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "onReceive - returned. camera is inactive"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "com.samsung.intent.action.SET_SCREEN_RATIO_VALUE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "com.samsung.intent.action.WIFI_DISPLAY_NOT_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "android.intent.action.VIDEOCAPABILITY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_4
    const-string v2, "com.samsung.android.action.DOUBLE_CLICK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_5
    const-string v2, "com.samsung.telecom.IncomingCallAnsweredDuringRecord"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_7
    const-string v2, "com.sktelecom.dmc.intent.action.DCMO_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_8
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_9
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    move v1, v3

    goto :goto_0

    :sswitch_a
    const-string v2, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;->handleScreenRatioValueChanged(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_1
    new-instance p0, Landroid/content/Intent;

    const-string p2, "camera.action.WIFI_DISPLAY_NOT_ALLOWED"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_2
    new-instance p0, Landroid/content/Intent;

    const-string p2, "camera.action.VIDEO_CAPABILITY"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;->handlePhysicalKeyDoubleClicked(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    new-instance p0, Landroid/content/Intent;

    const-string p2, "camera.action.CALL_STATE_OFFHOOK"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;->handleLocationModeChanged()V

    goto :goto_1

    :pswitch_6
    const-string p1, "CAMERA_ON"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_d

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->finish()V

    goto :goto_1

    :pswitch_7
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->updateLatestMedia()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->updateThumbnail()V

    goto :goto_1

    :pswitch_8
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;->getHeadsetPlugIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_9
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getEngine()Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getShutterTimerManager()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;->isTimerRunning()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getEngine()Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getShutterTimerManager()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;->cancelShutterTimer()V

    :cond_c
    new-instance p0, Landroid/content/Intent;

    const-string p2, "camera.action.SHUTDOWN"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_d
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7331fda3 -> :sswitch_a
        -0x63ecb970 -> :sswitch_9
        -0x4418042d -> :sswitch_8
        -0x21e22666 -> :sswitch_7
        -0x1e7960ae -> :sswitch_6
        -0xd7180f5 -> :sswitch_5
        0x43765052 -> :sswitch_4
        0x6d32ec4e -> :sswitch_3
        0x7102b19c -> :sswitch_2
        0x741706da -> :sswitch_1
        0x75b19b6e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method
