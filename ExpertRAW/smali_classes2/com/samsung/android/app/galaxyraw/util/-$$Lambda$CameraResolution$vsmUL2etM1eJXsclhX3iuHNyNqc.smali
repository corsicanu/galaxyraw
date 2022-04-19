.class public final synthetic Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$vsmUL2etM1eJXsclhX3iuHNyNqc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$vsmUL2etM1eJXsclhX3iuHNyNqc;->f$0:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$vsmUL2etM1eJXsclhX3iuHNyNqc;->f$0:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->lambda$getSelectableFrontVideoResolutionList$6(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p0

    return p0
.end method
