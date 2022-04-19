.class Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DepthInfoCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DepthInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DepthInfoCallbackManager"
.end annotation


# instance fields
.field private mDepthInfoListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$DepthInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DepthInfoCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DepthInfoCallbackManager;->mDepthInfoListenerList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DepthInfoCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V

    return-void
.end method

.method static synthetic lambda$onDepthInfoChanged$0(Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$DepthInfoListener;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$DepthInfoListener;->onDepthInfoChanged(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onDepthInfoChanged$1$CallbackManagerImpl$DepthInfoCallbackManager(Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DepthInfoCallbackManager;->mDepthInfoListenerList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$DepthInfoCallbackManager$Wl3iy1uYYJ2UT2aiMsHsoawunt4;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$DepthInfoCallbackManager$Wl3iy1uYYJ2UT2aiMsHsoawunt4;-><init>(Ljava/lang/Integer;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onDepthInfoChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "centerDepth",
            "camDevice"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DepthInfoCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p1

    new-instance p3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$DepthInfoCallbackManager$xHucihZ9nsExAHquxOL0jlV9dQ4;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$DepthInfoCallbackManager$xHucihZ9nsExAHquxOL0jlV9dQ4;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DepthInfoCallbackManager;Ljava/lang/Integer;)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method registerDepthInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$DepthInfoListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DepthInfoCallbackManager;->mDepthInfoListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DepthInfoCallbackManager;->mDepthInfoListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method unregisterDepthInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$DepthInfoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DepthInfoCallbackManager;->mDepthInfoListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
