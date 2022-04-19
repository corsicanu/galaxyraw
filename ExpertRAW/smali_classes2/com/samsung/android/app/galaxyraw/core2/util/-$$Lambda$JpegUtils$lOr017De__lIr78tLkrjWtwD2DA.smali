.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$lOr017De__lIr78tLkrjWtwD2DA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$lOr017De__lIr78tLkrjWtwD2DA;->f$0:Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$lOr017De__lIr78tLkrjWtwD2DA;->f$0:Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;->lambda$loadJpegMetadata$3(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V

    return-void
.end method
