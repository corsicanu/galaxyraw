.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$StreamConfigUtils$5fw5ZoyUy3hJpo8blqWPkBDkf7k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$StreamConfigUtils$5fw5ZoyUy3hJpo8blqWPkBDkf7k;->f$0:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$StreamConfigUtils$5fw5ZoyUy3hJpo8blqWPkBDkf7k;->f$0:Landroid/util/Size;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/StreamConfigUtils;->lambda$getFirstOverFitRawStreamConfig$0(Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;)Z

    move-result p0

    return p0
.end method
