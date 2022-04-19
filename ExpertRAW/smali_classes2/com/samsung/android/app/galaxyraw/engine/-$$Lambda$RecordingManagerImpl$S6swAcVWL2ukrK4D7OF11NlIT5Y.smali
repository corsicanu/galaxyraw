.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$S6swAcVWL2ukrK4D7OF11NlIT5Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$S6swAcVWL2ukrK4D7OF11NlIT5Y;->f$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$S6swAcVWL2ukrK4D7OF11NlIT5Y;->f$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->lambda$onRecordingStopped$6$RecordingManagerImpl()V

    return-void
.end method
