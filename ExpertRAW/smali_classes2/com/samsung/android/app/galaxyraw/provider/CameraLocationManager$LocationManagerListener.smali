.class public interface abstract Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$LocationManagerListener;
.super Ljava/lang/Object;
.source "CameraLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocationManagerListener"
.end annotation


# virtual methods
.method public abstract onLocationChanged(Landroid/location/Location;Landroid/location/Address;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "location",
            "address"
        }
    .end annotation
.end method
