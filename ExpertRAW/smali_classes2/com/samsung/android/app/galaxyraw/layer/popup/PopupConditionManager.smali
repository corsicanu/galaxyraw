.class Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;
.super Ljava/lang/Object;
.source "PopupConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;,
        Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$SaveChecker;,
        Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$EnabledChecker;
    }
.end annotation


# static fields
.field private static final INTELLIGENT_POPUP_OFFSET:J = 0x5265c00L

.field private static final KEY_BACK_LIGHT_POPUP_TIMER:Ljava/lang/String; = "pref_camera_back_light_popup_timer"

.field private static final KEY_LAUNCH_ZOOM_BAR_TIPS_NOT_USED_COUNT:Ljava/lang/String; = "pref_launch_zoom_bar_not_used_count"

.field private static final KEY_LENS_DIRTY_POPUP_TIMER:Ljava/lang/String; = "pref_camera_lens_dirty_popup_timer"

.field private static final KEY_ZOOM_IN_MIC_TIPS_NOT_USED_COUNT:Ljava/lang/String; = "pref_smart_tips_zoom_in_mic_not_used_count"

.field private static final LAUNCH_ZOOM_BAR_TIPS_FIRST_DISPLAY_COUNT:I = 0xa


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mPropertyMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;",
            "Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PopupConditionManager"

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->makePropertyMap()Ljava/util/EnumMap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->mPropertyMap:Ljava/util/EnumMap;

    return-void
.end method

.method private isContainTipsCountRange(II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "count",
            "maxCount"
        }
    .end annotation

    if-gt p1, p2, :cond_0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isEqualAfterIncreasePopupCount(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "popupId",
            "compareValue"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->getPopupCount(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->setPopupCount(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;I)V

    if-ne v0, p2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private isIntelligentGuidePopupEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->INTELLIGENT_TIPS_EVENT_DIRTY_LENS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    if-ne p1, v0, :cond_0

    const-string p1, "pref_camera_lens_dirty_popup_timer"

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->isIntelligentGuidePopupEnabled(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->INTELLIGENT_TIPS_EVENT_BACK_LIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    if-ne p1, v0, :cond_1

    const-string p1, "pref_camera_back_light_popup_timer"

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->isIntelligentGuidePopupEnabled(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private isIntelligentGuidePopupEnabled(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prefKey"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->mContext:Landroid/content/Context;

    const-wide/16 v1, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v4, 0x5265c00

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makePropertyMap()Ljava/util/EnumMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;",
            "Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "pref_launch_zoom_bar_not_used_count"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, v4}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupConditionManager$CmnJaWbnmgn7Zy7AKr5CWL-POLM;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupConditionManager$CmnJaWbnmgn7Zy7AKr5CWL-POLM;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->setSaveChecker(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$SaveChecker;)V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupConditionManager$R7JMl3tLUbkzQjtoNJk9Fl8aorE;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupConditionManager$R7JMl3tLUbkzQjtoNJk9Fl8aorE;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->setEnabledChecker(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$EnabledChecker;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->LAUNCH_ZOOM_BAR_TIPS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "pref_smart_tips_zoom_in_mic_not_used_count"

    invoke-direct {v1, v3, v2, v4}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupConditionManager$NNlV6TosR5RVzAleCphKcYlWCGk;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupConditionManager$NNlV6TosR5RVzAleCphKcYlWCGk;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->setEnabledChecker(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$EnabledChecker;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->ZOOM_IN_MIC_TIPS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;

    invoke-direct {v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;-><init>()V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupConditionManager$UpROy74J6z54umwp1TESyJhgMIc;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupConditionManager$UpROy74J6z54umwp1TESyJhgMIc;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->setEnabledChecker(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$EnabledChecker;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->INTELLIGENT_TIPS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, p0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method getPopupCount(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "popupId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->mPropertyMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->getPreferenceDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPopupCount ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PopupConditionManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isNeedCheckHighPriorityPopupVisible(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "popupId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->mPropertyMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->isNeedCheckHighPriorityPopupVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isPopupEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "popupId",
            "subId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->mPropertyMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->isAllowToShowAgain()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->getEnabledChecker()Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$EnabledChecker;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->getEnabledChecker()Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$EnabledChecker;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$EnabledChecker;->isEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->getPreferenceDefaultValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 v1, p0, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public synthetic lambda$makePropertyMap$0$PopupConditionManager(I)Z
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$makePropertyMap$1$PopupConditionManager(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Z
    .locals 0

    const/16 p2, 0xa

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->isEqualAfterIncreasePopupCount(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;I)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$makePropertyMap$2$PopupConditionManager(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->getPopupCount(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)I

    move-result p1

    const/4 p2, 0x3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$makePropertyMap$3$PopupConditionManager(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Z
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->isIntelligentGuidePopupEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Z

    move-result p0

    return p0
.end method

.method setAllowToShowAgain(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "popupId",
            "isAllow"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->mPropertyMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->setAllowToShowAgain(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAllowToShowAgain id ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ") : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PopupConditionManager"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method setPopupCount(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "popupId",
            "count"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->mPropertyMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->getSaveChecker()Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$SaveChecker;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->getPopupCount(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$SaveChecker;->isSave(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method setPopupEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "popupId",
            "enabled"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->mPropertyMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->getPreferenceDefaultValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    const-string v2, ") : "

    const-string v3, "setPopupEnabled id ("

    const-string v4, "PopupConditionManager"

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->getPreferenceDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->setPopupCount(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;I)V

    goto :goto_1

    :cond_0
    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->setPopupCount(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->getPreferenceDefaultValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    xor-int/lit8 v5, p2, 0x1

    goto :goto_0

    :cond_2
    move v5, p2

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eq v1, v5, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v5}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    return-void
.end method
