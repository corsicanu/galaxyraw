.class public final synthetic Lcom/samsung/android/app/galaxyraw/-$$Lambda$CommandReceiver$QWDcNJ_L-U5RtqcdZEtz9GFjjBM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/CommandReceiver;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/CommandReceiver;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$CommandReceiver$QWDcNJ_L-U5RtqcdZEtz9GFjjBM;->f$0:Lcom/samsung/android/app/galaxyraw/CommandReceiver;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$CommandReceiver$QWDcNJ_L-U5RtqcdZEtz9GFjjBM;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$CommandReceiver$QWDcNJ_L-U5RtqcdZEtz9GFjjBM;->f$0:Lcom/samsung/android/app/galaxyraw/CommandReceiver;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$CommandReceiver$QWDcNJ_L-U5RtqcdZEtz9GFjjBM;->f$1:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/CommandReceiver;->lambda$onMultiRecordingLensTypeSelect$1$CommandReceiver(I)V

    return-void
.end method
