.class Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;
.super Ljava/lang/Object;
.source "VoiceAssistantManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeakTtsRunnable"
.end annotation


# instance fields
.field final mLock:Ljava/lang/Object;

.field mString:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;->mLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;-><init>(Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;)V

    return-void
.end method


# virtual methods
.method public getTtsString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;->mString:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->access$100(Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;->mString:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->access$100(Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->access$200(Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setTtsString(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager$SpeakTtsRunnable;->mString:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
