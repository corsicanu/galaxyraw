.class public final synthetic Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PFxn3SGhlQF4ksgzmVIUcJsZ3t8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/setting/ValueGetter;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PFxn3SGhlQF4ksgzmVIUcJsZ3t8;->f$0:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    return-void
.end method


# virtual methods
.method public final get()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PFxn3SGhlQF4ksgzmVIUcJsZ3t8;->f$0:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result p0

    return p0
.end method
