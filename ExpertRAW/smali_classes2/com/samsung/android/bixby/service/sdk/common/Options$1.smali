.class final Lcom/samsung/android/bixby/service/sdk/common/Options$1;
.super Ljava/lang/Object;
.source "Options.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bixby/service/sdk/common/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/bixby/service/sdk/common/Options;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/bixby/service/sdk/common/Options;
    .locals 0

    new-instance p0, Lcom/samsung/android/bixby/service/sdk/common/Options;

    invoke-direct {p0, p1}, Lcom/samsung/android/bixby/service/sdk/common/Options;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/bixby/service/sdk/common/Options$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/bixby/service/sdk/common/Options;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/bixby/service/sdk/common/Options;
    .locals 0

    new-array p0, p1, [Lcom/samsung/android/bixby/service/sdk/common/Options;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/bixby/service/sdk/common/Options$1;->newArray(I)[Lcom/samsung/android/bixby/service/sdk/common/Options;

    move-result-object p0

    return-object p0
.end method
