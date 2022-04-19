.class Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$6;
.super Ljava/lang/Object;
.source "AeAfManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$6;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartPreviewCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$6;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->isTrackingAfStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$6;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->resetTrackingAf()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$6;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->resetAeAfAwb()V

    :goto_0
    return-void
.end method

.method public onStartPreviewRequested()V
    .locals 0

    return-void
.end method
