.class Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$2;
.super Ljava/lang/Object;
.source "PreferenceSettingFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->access$000(Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getKeyByPreferenceKey(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v0

    const-string v1, "PrefSettingFragment"

    if-nez v0, :cond_0

    const-string p0, "onPreferenceChange : settingKey is null"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange : key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, p1, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->access$100(Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    instance-of v1, p1, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->access$200(Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    instance-of v1, p1, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->access$300(Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    instance-of v1, p1, Landroidx/preference/ListPreference;

    if-eqz v1, :cond_5

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->access$400(Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    if-ltz p2, :cond_4

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p2

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    const/4 p0, 0x1

    return p0
.end method
