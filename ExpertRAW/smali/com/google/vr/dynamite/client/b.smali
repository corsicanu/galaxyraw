.class public final Lcom/google/vr/dynamite/client/b;
.super Lcom/google/a/a/b;
.source "INativeLibraryLoader.java"

# interfaces
.implements Lcom/google/vr/dynamite/client/INativeLibraryLoader;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.vr.dynamite.client.INativeLibraryLoader"

    invoke-direct {p0, p1, v0}, Lcom/google/a/a/b;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final checkVersion(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/vr/dynamite/client/b;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/vr/dynamite/client/b;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return p1
.end method

.method public final initializeAndLoadNativeLibrary(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/vr/dynamite/client/b;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/vr/dynamite/client/b;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-wide v0
.end method
