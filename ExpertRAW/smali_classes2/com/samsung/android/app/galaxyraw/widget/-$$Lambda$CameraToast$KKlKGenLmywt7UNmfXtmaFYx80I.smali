.class public final synthetic Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$CameraToast$KKlKGenLmywt7UNmfXtmaFYx80I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/widget/CameraToast;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/widget/CameraToast;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$CameraToast$KKlKGenLmywt7UNmfXtmaFYx80I;->f$0:Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$CameraToast$KKlKGenLmywt7UNmfXtmaFYx80I;->f$0:Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->lambda$cancel$0$CameraToast(Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method
