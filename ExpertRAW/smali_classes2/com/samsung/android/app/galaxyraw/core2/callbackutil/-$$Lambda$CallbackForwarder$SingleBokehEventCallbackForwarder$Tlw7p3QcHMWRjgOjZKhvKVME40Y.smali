.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SingleBokehEventCallbackForwarder$Tlw7p3QcHMWRjgOjZKhvKVME40Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:[Landroid/graphics/Rect;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(I[Landroid/graphics/Rect;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SingleBokehEventCallbackForwarder$Tlw7p3QcHMWRjgOjZKhvKVME40Y;->f$0:I

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SingleBokehEventCallbackForwarder$Tlw7p3QcHMWRjgOjZKhvKVME40Y;->f$1:[Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SingleBokehEventCallbackForwarder$Tlw7p3QcHMWRjgOjZKhvKVME40Y;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SingleBokehEventCallbackForwarder$Tlw7p3QcHMWRjgOjZKhvKVME40Y;->f$0:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SingleBokehEventCallbackForwarder$Tlw7p3QcHMWRjgOjZKhvKVME40Y;->f$1:[Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SingleBokehEventCallbackForwarder$Tlw7p3QcHMWRjgOjZKhvKVME40Y;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SingleBokehEventCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SingleBokehEventCallbackForwarder;->lambda$onSingleBokehInfoChanged$2(I[Landroid/graphics/Rect;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SingleBokehEventCallback;)V

    return-void
.end method
