.class public final Lcom/google/vr/dynamite/client/a;
.super Lcom/google/a/a/b;
.source "ILoadedInstanceCreator.java"

# interfaces
.implements Lcom/google/vr/dynamite/client/ILoadedInstanceCreator;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.vr.dynamite.client.ILoadedInstanceCreator"

    invoke-direct {p0, p1, v0}, Lcom/google/a/a/b;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final newNativeLibraryLoader(Lcom/google/vr/dynamite/client/IObjectWrapper;Lcom/google/vr/dynamite/client/IObjectWrapper;)Lcom/google/vr/dynamite/client/INativeLibraryLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/vr/dynamite/client/a;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/a/a/d;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lcom/google/a/a/d;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/vr/dynamite/client/a;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.vr.dynamite.client.INativeLibraryLoader"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of v0, p2, Lcom/google/vr/dynamite/client/INativeLibraryLoader;

    if-eqz v0, :cond_1

    move-object p1, p2

    check-cast p1, Lcom/google/vr/dynamite/client/INativeLibraryLoader;

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/google/vr/dynamite/client/b;

    invoke-direct {p2, p1}, Lcom/google/vr/dynamite/client/b;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method
