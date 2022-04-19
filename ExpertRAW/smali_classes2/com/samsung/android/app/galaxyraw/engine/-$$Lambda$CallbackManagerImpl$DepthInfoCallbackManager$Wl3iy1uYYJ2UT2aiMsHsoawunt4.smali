.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$DepthInfoCallbackManager$Wl3iy1uYYJ2UT2aiMsHsoawunt4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$DepthInfoCallbackManager$Wl3iy1uYYJ2UT2aiMsHsoawunt4;->f$0:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$DepthInfoCallbackManager$Wl3iy1uYYJ2UT2aiMsHsoawunt4;->f$0:Ljava/lang/Integer;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$DepthInfoListener;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DepthInfoCallbackManager;->lambda$onDepthInfoChanged$0(Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$DepthInfoListener;)V

    return-void
.end method
