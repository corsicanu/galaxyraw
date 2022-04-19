.class Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment$1;
.super Ljava/lang/Object;
.source "AdvancedRecordingOptionsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;

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

    const-string v2, "AdvancedRecordingOptionsFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/Boolean;

    instance-of v1, p1, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;->access$000(Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;->access$100(Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;)[Z

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;->access$000(Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v2

    aget-boolean v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;->access$200(Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;->access$000(Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->toInt(Ljava/lang/Boolean;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_0
    const-string v1, "hdr10_recording"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const v0, 0x7f1201ff

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\n\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;

    const v0, 0x7f120200

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
