.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$XD6LCYeMVW8gTP0WdKE0cAeshWI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$XD6LCYeMVW8gTP0WdKE0cAeshWI;->f$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$XD6LCYeMVW8gTP0WdKE0cAeshWI;->f$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    check-cast p1, Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->lambda$updateLocationInfo$17$RecordingManagerImpl(Landroid/media/MediaRecorder;)V

    return-void
.end method
