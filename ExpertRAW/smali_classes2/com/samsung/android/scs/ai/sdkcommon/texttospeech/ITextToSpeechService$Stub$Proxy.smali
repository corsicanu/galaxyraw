.class Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITextToSpeechService.java"

# interfaces
.implements Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getAllVoiceTypes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.scs.ai.sdkcommon.texttospeech.ITextToSpeechService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub;->getDefaultImpl()Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub;->getDefaultImpl()Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;->getAllVoiceTypes()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    sget-object p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.scs.ai.sdkcommon.texttospeech.ITextToSpeechService"

    return-object p0
.end method

.method public initEngine(ILcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.scs.ai.sdkcommon.texttospeech.ITextToSpeechService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub;->getDefaultImpl()Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub;->getDefaultImpl()Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;->initEngine(ILcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public stopSynthesize()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.scs.ai.sdkcommon.texttospeech.ITextToSpeechService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub;->getDefaultImpl()Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub;->getDefaultImpl()Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;->stopSynthesize()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public synthesize(ILcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.scs.ai.sdkcommon.texttospeech.ITextToSpeechService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p3, v0, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p4, :cond_2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub;->getDefaultImpl()Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub;->getDefaultImpl()Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;->synthesize(ILcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public synthesizeByLocale(ILcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p3

    move-object/from16 v5, p4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    :try_start_0
    const-string v1, "com.samsung.android.scs.ai.sdkcommon.texttospeech.ITextToSpeechService"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v2, p1

    invoke-virtual {v10, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p3, v10, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, v10, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    move-object/from16 v6, p5

    invoke-virtual {v10, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v7, p6

    invoke-virtual {v10, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v8, p7

    invoke-virtual {v10, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v9, p8

    invoke-virtual {v10, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v1, p0

    iget-object v1, v1, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v1, v4, v10, v11, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub;->getDefaultImpl()Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub;->getDefaultImpl()Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;->synthesizeByLocale(ILcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    return v0

    :cond_3
    :try_start_1
    invoke-virtual {v11}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public synthesizeByVoiceType(ILcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.scs.ai.sdkcommon.texttospeech.ITextToSpeechService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p3, v0, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p4, :cond_2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p6, :cond_3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p6, v0, v3}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub;->getDefaultImpl()Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub;->getDefaultImpl()Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;->synthesizeByVoiceType(ILcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :cond_4
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
