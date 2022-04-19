.class Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment$1;
.super Ljava/lang/Object;
.source "SaveOptionsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;

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

    const-string v2, "SaveOptionsFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/Boolean;

    instance-of v1, p1, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->PICTURE_FORMAT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PICTURE_FORMAT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->toInt(Ljava/lang/Boolean;)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->DUAL_CAPTURE_IN_LIVE_FOCUS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->access$000(Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DUAL_CAPTURE_IN_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->toInt(Ljava/lang/Boolean;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->HEIF:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->access$000(Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->toInt(Ljava/lang/Boolean;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->WIDE_LENS_CORRECTION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->access$000(Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_LENS_CORRECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->toInt(Ljava/lang/Boolean;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
