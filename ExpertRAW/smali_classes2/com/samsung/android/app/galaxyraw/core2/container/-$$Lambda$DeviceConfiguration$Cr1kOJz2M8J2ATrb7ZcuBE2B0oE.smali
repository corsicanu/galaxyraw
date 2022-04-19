.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$Cr1kOJz2M8J2ATrb7ZcuBE2B0oE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$Cr1kOJz2M8J2ATrb7ZcuBE2B0oE;->f$0:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$Cr1kOJz2M8J2ATrb7ZcuBE2B0oE;->f$0:Ljava/lang/StringBuilder;

    check-cast p1, Landroid/util/Size;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->lambda$toString$1(Ljava/lang/StringBuilder;Landroid/util/Size;)V

    return-void
.end method
