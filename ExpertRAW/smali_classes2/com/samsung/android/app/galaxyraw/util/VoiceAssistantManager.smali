.class public Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;
.super Ljava/lang/Object;
.source "VoiceAssistantManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;
    }
.end annotation


# static fields
.field private static final DELAY_TIME_TO_SPEAK_TTS:I = 0x1f4

.field public static final EVENT_TYPE_HIDE:I = 0x1

.field public static final EVENT_TYPE_MAX:I = 0x1

.field public static final EVENT_TYPE_SHOW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VoiceAssistantManager"

.field private static mInstance:Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;

.field private static final mInstanceLock:Ljava/lang/Object;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mSpeakTtsRunnable:Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;

.field private mTtsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mTtsEnabled:Z

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;-><init>(Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mSpeakTtsRunnable:Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->startHandler()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->updateTtsEnabled()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method public static clear()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mInstance:Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;

    if-eqz v1, :cond_0

    invoke-direct {v1}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->stopHandler()V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mInstance:Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mTtsEnabled:Z

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mContext:Landroid/content/Context;

    iput-object v2, v1, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    sput-object v2, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mInstance:Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mInstance:Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mInstance:Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mInstance:Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isSamsungTalkBackEnabled(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "enabled_accessibility_services"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    move v0, p0

    :cond_2
    return v0
.end method

.method public static isScreenReaderActive(Landroid/content/Context;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "enabled_accessibility_services"

    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-virtual {v0, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.accessibility"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    return v1
.end method

.method public static isTalkBackServiceActive(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "accessibility"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_1
    return v0
.end method

.method public static isTtsEnabled(Landroid/content/Context;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;

    move-result-object p0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mTtsEnabled:Z

    return p0
.end method

.method public static speakCurrentCameraInfo(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "shootingModeTitle",
            "facing",
            "isFacingSwitch"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->speakCurrentCameraInfoInternal(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method private speakCurrentCameraInfoInternal(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "shootingModeTitle",
            "facing",
            "isFacingSwitch"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mTtsEnabled:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120331

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f1204b3

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f1204b4

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->speakTtsAllAtOnce(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public static speakTtsAllAtOnce(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "text"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->speakTtsAllAtOnce(Ljava/lang/String;Z)V

    return-void
.end method

.method private speakTtsAllAtOnce(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "text",
            "speakCurrentTextFirst"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mTtsEnabled:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mSpeakTtsRunnable:Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mSpeakTtsRunnable:Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;->getTtsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mSpeakTtsRunnable:Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;->getTtsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ", "

    if-eqz p2, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mSpeakTtsRunnable:Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;->getTtsString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mSpeakTtsRunnable:Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;->getTtsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mSpeakTtsRunnable:Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mSpeakTtsRunnable:Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;->setTtsString(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mSpeakTtsRunnable:Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method private startHandler()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VoiceAssistantHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private stopHandler()V
    .locals 4

    const-string v0, "VoiceAssistantManager"

    const-string v1, "stopHandler - start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopHandler : interrupted - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    const-string p0, "stopHandler - end"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateTtsEnabled()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->mTtsEnabled:Z

    return-void
.end method
