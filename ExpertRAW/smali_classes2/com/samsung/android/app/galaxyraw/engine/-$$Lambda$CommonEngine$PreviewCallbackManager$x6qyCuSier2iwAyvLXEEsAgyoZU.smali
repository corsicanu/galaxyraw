.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$PreviewCallbackManager$x6qyCuSier2iwAyvLXEEsAgyoZU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[B

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;


# direct methods
.method public synthetic constructor <init>([BLcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$PreviewCallbackManager$x6qyCuSier2iwAyvLXEEsAgyoZU;->f$0:[B

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$PreviewCallbackManager$x6qyCuSier2iwAyvLXEEsAgyoZU;->f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$PreviewCallbackManager$x6qyCuSier2iwAyvLXEEsAgyoZU;->f$0:[B

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$PreviewCallbackManager$x6qyCuSier2iwAyvLXEEsAgyoZU;->f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LiveThumbnailPreviewListener;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$PreviewCallbackManager;->lambda$onPreviewFrame$0([BLcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LiveThumbnailPreviewListener;)V

    return-void
.end method
