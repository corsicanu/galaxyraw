.class public abstract Lcom/samsung/android/bixby/service/sdk/common/text/ITextService$Stub;
.super Landroid/os/Binder;
.source "ITextService.java"

# interfaces
.implements Lcom/samsung/android/bixby/service/sdk/common/text/ITextService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bixby/service/sdk/common/text/ITextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bixby/service/sdk/common/text/ITextService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.bixby.service.sdk.common.text.ITextService"

.field static final TRANSACTION_classifyMessage:I = 0x1

.field static final TRANSACTION_extractMessageKeywords:I = 0x2

.field static final TRANSACTION_getSuggestedQuery:I = 0x5

.field static final TRANSACTION_identifyLanguage:I = 0x3

.field static final TRANSACTION_translateLanguage:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.bixby.service.sdk.common.text.ITextService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/bixby/service/sdk/common/text/ITextService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bixby/service/sdk/common/text/ITextService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.bixby.service.sdk.common.text.ITextService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/bixby/service/sdk/common/text/ITextService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/bixby/service/sdk/common/text/ITextService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/bixby/service/sdk/common/text/ITextService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/bixby/service/sdk/common/text/ITextService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "com.samsung.android.bixby.service.sdk.common.text.ITextService"

    const/4 v3, 0x1

    if-eq p1, v3, :cond_b

    const/4 v4, 0x2

    if-eq p1, v4, :cond_8

    const/4 v4, 0x3

    if-eq p1, v4, :cond_6

    const/4 v4, 0x4

    if-eq p1, v4, :cond_4

    const/4 v4, 0x5

    if-eq p1, v4, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    sget-object p4, Lcom/samsung/android/bixby/service/sdk/common/Options;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/bixby/service/sdk/common/Options;

    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/bixby/service/sdk/common/text/ITextService$Stub;->getSuggestedQuery(Ljava/lang/String;Lcom/samsung/android/bixby/service/sdk/common/Options;)Lcom/samsung/android/bixby/service/sdk/common/Result;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_3

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p3, v3}, Lcom/samsung/android/bixby/service/sdk/common/Result;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v3

    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5

    sget-object p4, Lcom/samsung/android/bixby/service/sdk/common/Options;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Lcom/samsung/android/bixby/service/sdk/common/Options;

    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/bixby/service/sdk/common/text/ILanguageTranslatorListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bixby/service/sdk/common/text/ILanguageTranslatorListener;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/samsung/android/bixby/service/sdk/common/text/ITextService$Stub;->translateLanguage(Ljava/lang/String;Lcom/samsung/android/bixby/service/sdk/common/Options;Lcom/samsung/android/bixby/service/sdk/common/text/ILanguageTranslatorListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_7

    sget-object p4, Lcom/samsung/android/bixby/service/sdk/common/Options;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Lcom/samsung/android/bixby/service/sdk/common/Options;

    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/bixby/service/sdk/common/text/ILanguageIdentifierListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bixby/service/sdk/common/text/ILanguageIdentifierListener;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/samsung/android/bixby/service/sdk/common/text/ITextService$Stub;->identifyLanguage(Ljava/lang/String;Lcom/samsung/android/bixby/service/sdk/common/Options;Lcom/samsung/android/bixby/service/sdk/common/text/ILanguageIdentifierListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_9

    sget-object p4, Lcom/samsung/android/bixby/service/sdk/common/Options;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/bixby/service/sdk/common/Options;

    :cond_9
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/bixby/service/sdk/common/text/ITextService$Stub;->extractMessageKeywords(Ljava/lang/String;Lcom/samsung/android/bixby/service/sdk/common/Options;)Lcom/samsung/android/bixby/service/sdk/common/Result;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_a

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p3, v3}, Lcom/samsung/android/bixby/service/sdk/common/Result;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v3

    :cond_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_c

    sget-object p4, Lcom/samsung/android/bixby/service/sdk/common/Options;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/bixby/service/sdk/common/Options;

    :cond_c
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/bixby/service/sdk/common/text/ITextService$Stub;->classifyMessage(Ljava/lang/String;Lcom/samsung/android/bixby/service/sdk/common/Options;)Lcom/samsung/android/bixby/service/sdk/common/Result;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_d

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p3, v3}, Lcom/samsung/android/bixby/service/sdk/common/Result;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v3
.end method
