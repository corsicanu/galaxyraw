.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$ThumbnailProcessor$4-wqKxP8_3ImtWtr8d5-JqXic6M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;

.field public final synthetic f$1:[B

.field public final synthetic f$2:Landroid/util/Size;

.field public final synthetic f$3:Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;[BLandroid/util/Size;Lcom/samsung/android/app/galaxyraw/engine/LastContentData;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$ThumbnailProcessor$4-wqKxP8_3ImtWtr8d5-JqXic6M;->f$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$ThumbnailProcessor$4-wqKxP8_3ImtWtr8d5-JqXic6M;->f$1:[B

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$ThumbnailProcessor$4-wqKxP8_3ImtWtr8d5-JqXic6M;->f$2:Landroid/util/Size;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$ThumbnailProcessor$4-wqKxP8_3ImtWtr8d5-JqXic6M;->f$3:Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    iput p5, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$ThumbnailProcessor$4-wqKxP8_3ImtWtr8d5-JqXic6M;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$ThumbnailProcessor$4-wqKxP8_3ImtWtr8d5-JqXic6M;->f$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$ThumbnailProcessor$4-wqKxP8_3ImtWtr8d5-JqXic6M;->f$1:[B

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$ThumbnailProcessor$4-wqKxP8_3ImtWtr8d5-JqXic6M;->f$2:Landroid/util/Size;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$ThumbnailProcessor$4-wqKxP8_3ImtWtr8d5-JqXic6M;->f$3:Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$ThumbnailProcessor$4-wqKxP8_3ImtWtr8d5-JqXic6M;->f$4:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;->lambda$process$1$PictureProcessor$ThumbnailProcessor([BLandroid/util/Size;Lcom/samsung/android/app/galaxyraw/engine/LastContentData;I)V

    return-void
.end method
