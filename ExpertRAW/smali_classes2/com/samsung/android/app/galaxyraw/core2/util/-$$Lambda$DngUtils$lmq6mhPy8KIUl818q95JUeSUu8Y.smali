.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$lmq6mhPy8KIUl818q95JUeSUu8Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$lmq6mhPy8KIUl818q95JUeSUu8Y;->f$0:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$lmq6mhPy8KIUl818q95JUeSUu8Y;->f$0:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;

    check-cast p1, Landroid/location/Location;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->lambda$setLatitude$0(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;Landroid/location/Location;)V

    return-void
.end method
