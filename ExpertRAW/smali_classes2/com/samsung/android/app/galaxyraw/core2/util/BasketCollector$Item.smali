.class public Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;
.super Ljava/lang/Object;
.source "BasketCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private data:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

.field private final format:I

.field private isCollected:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;->format:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;->isCollected:Z

    return-void
.end method


# virtual methods
.method public getData()Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;->data:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    return-object p0
.end method

.method public getFormat()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;->format:I

    return p0
.end method

.method public isCollected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;->isCollected:Z

    return p0
.end method

.method public setCollected(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collected"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;->isCollected:Z

    return-void
.end method

.method public setData(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;->data:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    return-void
.end method
