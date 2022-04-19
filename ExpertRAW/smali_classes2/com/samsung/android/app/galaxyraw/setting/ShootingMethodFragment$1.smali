.class Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment$1;
.super Ljava/lang/Object;
.source "ShootingMethodFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "preference",
            "newValue"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange : key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShootingMethodFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "volume_key_to"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOLUME_KEY_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    if-eqz v1, :cond_6

    check-cast p2, Ljava/lang/Boolean;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setChecked(Z)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 p1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "hrm_shutter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "tap_to_take_pictures"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "voice_control"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "palm_detection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move p1, v2

    goto :goto_0

    :sswitch_4
    const-string v1, "floating_camera_button"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->access$000(Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HRM_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->toInt(Ljava/lang/Boolean;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->access$000(Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TAP_TO_TAKE_PICTURES:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->toInt(Ljava/lang/Boolean;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_1

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->access$000(Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOICE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->toInt(Ljava/lang/Boolean;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_1

    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->access$000(Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->toInt(Ljava/lang/Boolean;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_1

    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->access$000(Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->toInt(Ljava/lang/Boolean;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_6
    :goto_1
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0xcf92aed -> :sswitch_4
        0xd2851b8 -> :sswitch_3
        0x14e69b50 -> :sswitch_2
        0x43695245 -> :sswitch_1
        0x6edbc051 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
