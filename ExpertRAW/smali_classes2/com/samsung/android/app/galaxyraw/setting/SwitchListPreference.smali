.class public Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;
.super Landroidx/preference/SwitchPreference;
.source "SwitchListPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SwitchListPreference"


# instance fields
.field private mEventId:Ljava/lang/String;

.field private mSubEventId:Ljava/lang/String;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d0021

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onBindViewHolder$0$SwitchListPreference(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->mSubEventId:Ljava/lang/String;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->callChangeListener(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->mChecked:Z

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a02c0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->mSwitch:Landroid/widget/Switch;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->mSwitch:Landroid/widget/Switch;

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->mSwitch:Landroid/widget/Switch;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SwitchListPreference$YCSZXDlEhM5ynrZN8ffBXUN0tAI;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SwitchListPreference$YCSZXDlEhM5ynrZN8ffBXUN0tAI;-><init>(Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onClick()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SwitchListPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->mEventId:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checked"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Switch;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SwitchListPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->mChecked:Z

    return-void
.end method

.method setEventId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventId"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->mEventId:Ljava/lang/String;

    return-void
.end method

.method setSubEventId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subEventId"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->mSubEventId:Ljava/lang/String;

    return-void
.end method
