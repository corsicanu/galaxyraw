.class public Lcom/samsung/android/bixby/service/sdk/common/Options;
.super Ljava/lang/Object;
.source "Options.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/bixby/service/sdk/common/Options;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOptionsData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/bixby/service/sdk/common/Options$1;

    invoke-direct {v0}, Lcom/samsung/android/bixby/service/sdk/common/Options$1;-><init>()V

    sput-object v0, Lcom/samsung/android/bixby/service/sdk/common/Options;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/common/Options;->mOptionsData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public convertOptions(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/bixby/service/sdk/common/Options;->getOptionsData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOptions()Lcom/samsung/android/bixby/service/sdk/common/Options;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/bixby/service/sdk/common/Options;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/bixby/service/sdk/common/Options;->mOptionsData:Ljava/lang/String;

    return-object p0
.end method

.method protected getOptionsData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/common/Options;->mOptionsData:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/common/Options;->mOptionsData:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
