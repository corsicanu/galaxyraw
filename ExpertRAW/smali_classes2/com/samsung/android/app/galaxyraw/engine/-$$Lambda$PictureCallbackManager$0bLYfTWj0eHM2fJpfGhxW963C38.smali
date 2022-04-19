.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$0bLYfTWj0eHM2fJpfGhxW963C38;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$0bLYfTWj0eHM2fJpfGhxW963C38;->f$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$0bLYfTWj0eHM2fJpfGhxW963C38;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$0bLYfTWj0eHM2fJpfGhxW963C38;->f$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$0bLYfTWj0eHM2fJpfGhxW963C38;->f$1:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->lambda$onProcessingFrameCollected$1$PictureCallbackManager(I)V

    return-void
.end method
