.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$e9OqD4UXu2uamENdSLIq3shXtVM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/engine/LastContentData;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;Lcom/samsung/android/app/galaxyraw/engine/LastContentData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$e9OqD4UXu2uamENdSLIq3shXtVM;->f$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$e9OqD4UXu2uamENdSLIq3shXtVM;->f$1:Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$e9OqD4UXu2uamENdSLIq3shXtVM;->f$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$e9OqD4UXu2uamENdSLIq3shXtVM;->f$1:Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->lambda$onDraftPostProcessingPictureTaken$0$PictureCallbackManager(Lcom/samsung/android/app/galaxyraw/engine/LastContentData;)V

    return-void
.end method
