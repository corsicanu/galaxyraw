.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$mPKYbACvtQUEgnMzxiFXhU5paqQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$mPKYbACvtQUEgnMzxiFXhU5paqQ;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$mPKYbACvtQUEgnMzxiFXhU5paqQ;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->lambda$mPKYbACvtQUEgnMzxiFXhU5paqQ(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;)V

    return-void
.end method
