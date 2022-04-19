.class Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment$1;
.super Ljava/lang/Object;
.source "SettingsToKeepFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
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

    const-string v2, "SettingsToKeepFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, p1, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setChecked(Z)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "keep_selfie_angle"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v3, "keep_filters"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :sswitch_2
    const-string v3, "keep_camera_mode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment;->access$000(Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_SELFIE_ANGLE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->toInt(Ljava/lang/Boolean;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const v0, 0x7f1202ca

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\n\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment;

    const v0, 0x7f1202cb

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment;->access$000(Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_FILTERS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->toInt(Ljava/lang/Boolean;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_1

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment;->access$000(Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_CAMERA_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->toInt(Ljava/lang/Boolean;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_4
    :goto_1
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x78fe373d -> :sswitch_2
        -0x71fadebf -> :sswitch_1
        -0xc1bba4a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
