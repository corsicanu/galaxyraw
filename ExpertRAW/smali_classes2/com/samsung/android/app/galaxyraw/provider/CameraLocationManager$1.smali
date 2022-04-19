.class Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$1;
.super Ljava/lang/Object;
.source "CameraLocationManager.java"

# interfaces
.implements Lcom/samsung/android/location/SemLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->startAddressRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationAvailable([Landroid/location/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;Landroid/location/Address;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->access$002(Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->access$084(Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->access$084(Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->access$084(Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->access$084(Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->access$084(Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->access$084(Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->access$084(Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->access$084(Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->access$084(Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->access$102(Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;Landroid/location/Location;)Landroid/location/Location;

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->access$200()Ljava/util/List;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->access$200()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$LocationManagerListener;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$LocationManagerListener;->onLocationChanged(Landroid/location/Location;Landroid/location/Address;)V

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
