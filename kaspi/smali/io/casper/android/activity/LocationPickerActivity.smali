.class public Lio/casper/android/activity/LocationPickerActivity;
.super Lio/casper/android/activity/a/a;
.source "LocationPickerActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# static fields
.field public static final LOCATION_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final LOCATION_LONGITUDE:Ljava/lang/String; = "longitude"

.field private static final TAG:Ljava/lang/String; = "LocationPickerActivity"


# instance fields
.field PLACE_AUTOCOMPLETE_REQUEST_CODE:I

.field private mAdManager:Lio/casper/android/l/a;

.field private mContext:Landroid/content/Context;

.field private mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mSelectedLatitude:D

.field private mSelectedLongitude:D

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mUseMyLocation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lio/casper/android/activity/a/a;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lio/casper/android/activity/LocationPickerActivity;->PLACE_AUTOCOMPLETE_REQUEST_CODE:I

    return-void
.end method

.method private a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 6

    .prologue
    .line 106
    iget-object v0, p0, Lio/casper/android/activity/LocationPickerActivity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 107
    iget-object v0, p0, Lio/casper/android/activity/LocationPickerActivity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 109
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iput-wide v0, p0, Lio/casper/android/activity/LocationPickerActivity;->mSelectedLatitude:D

    .line 110
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iput-wide v0, p0, Lio/casper/android/activity/LocationPickerActivity;->mSelectedLongitude:D

    .line 112
    iget-object v0, p0, Lio/casper/android/activity/LocationPickerActivity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 114
    const-string v0, "LocationPickerActivity"

    const-string v1, "setLocation latitude=%s longitude=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lio/casper/android/activity/LocationPickerActivity;->mSelectedLatitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lio/casper/android/activity/LocationPickerActivity;->mSelectedLongitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 199
    iget v0, p0, Lio/casper/android/activity/LocationPickerActivity;->PLACE_AUTOCOMPLETE_REQUEST_CODE:I

    if-ne p1, v0, :cond_0

    .line 200
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 202
    iput-boolean v4, p0, Lio/casper/android/activity/LocationPickerActivity;->mUseMyLocation:Z

    .line 204
    iget-object v0, p0, Lio/casper/android/activity/LocationPickerActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete;->getPlace(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/location/places/Place;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Lcom/google/android/gms/location/places/Place;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/casper/android/activity/LocationPickerActivity;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 209
    invoke-static {p0, p3}, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete;->getStatus(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 210
    const-string v1, "LocationPickerActivity"

    const-string v2, "PlaceAutocomplete returned Error Result: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lio/casper/android/activity/LocationPickerActivity;->setContentView(I)V

    .line 57
    iput-object p0, p0, Lio/casper/android/activity/LocationPickerActivity;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Lio/casper/android/l/a;

    iget-object v1, p0, Lio/casper/android/activity/LocationPickerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/LocationPickerActivity;->mAdManager:Lio/casper/android/l/a;

    .line 61
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lio/casper/android/activity/LocationPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/LocationPickerActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 63
    iget-object v0, p0, Lio/casper/android/activity/LocationPickerActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/casper/android/activity/LocationPickerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 64
    invoke-virtual {p0}, Lio/casper/android/activity/LocationPickerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 66
    iget-object v1, p0, Lio/casper/android/activity/LocationPickerActivity;->mAdManager:Lio/casper/android/l/a;

    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lio/casper/android/activity/LocationPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;)V

    .line 68
    invoke-virtual {p0}, Lio/casper/android/activity/LocationPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0c00d4

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapFragment;

    .line 69
    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/MapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 71
    iget-object v0, p0, Lio/casper/android/activity/LocationPickerActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 72
    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/LocationPickerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    const v1, 0x7f0701a1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 76
    const v1, 0x7f070070

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 77
    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 78
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 83
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 136
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 138
    invoke-virtual {p0}, Lio/casper/android/activity/LocationPickerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 139
    const v1, 0x7f0f0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/casper/android/activity/LocationPickerActivity;->mUseMyLocation:Z

    .line 130
    invoke-direct {p0, p1}, Lio/casper/android/activity/LocationPickerActivity;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 131
    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 2

    .prologue
    .line 88
    iput-object p1, p0, Lio/casper/android/activity/LocationPickerActivity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 89
    iget-object v0, p0, Lio/casper/android/activity/LocationPickerActivity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 90
    iget-object v0, p0, Lio/casper/android/activity/LocationPickerActivity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V

    .line 91
    iget-object v0, p0, Lio/casper/android/activity/LocationPickerActivity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMyLocationButtonClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener;)V

    .line 92
    iget-object v0, p0, Lio/casper/android/activity/LocationPickerActivity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 94
    return-void
.end method

.method public onMyLocationButtonClick()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/casper/android/activity/LocationPickerActivity;->mUseMyLocation:Z

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public onMyLocationChange(Landroid/location/Location;)V
    .locals 6

    .prologue
    .line 121
    iget-boolean v0, p0, Lio/casper/android/activity/LocationPickerActivity;->mUseMyLocation:Z

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p0, v0}, Lio/casper/android/activity/LocationPickerActivity;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 193
    :goto_0
    return v0

    .line 152
    :sswitch_0
    invoke-virtual {p0}, Lio/casper/android/activity/LocationPickerActivity;->onBackPressed()V

    goto :goto_0

    .line 158
    :sswitch_1
    iget-wide v2, p0, Lio/casper/android/activity/LocationPickerActivity;->mSelectedLatitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lio/casper/android/activity/LocationPickerActivity;->mSelectedLongitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 159
    iget-object v2, p0, Lio/casper/android/activity/LocationPickerActivity;->mContext:Landroid/content/Context;

    const-string v3, "Please select a Location"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 163
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 165
    const-string v2, "latitude"

    iget-wide v4, p0, Lio/casper/android/activity/LocationPickerActivity;->mSelectedLatitude:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v2, "longitude"

    iget-wide v4, p0, Lio/casper/android/activity/LocationPickerActivity;->mSelectedLongitude:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 169
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 170
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v2}, Lio/casper/android/activity/LocationPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 171
    invoke-virtual {p0}, Lio/casper/android/activity/LocationPickerActivity;->finish()V

    goto :goto_0

    .line 180
    :sswitch_2
    :try_start_0
    new-instance v2, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;->build(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v2

    .line 181
    iget v3, p0, Lio/casper/android/activity/LocationPickerActivity;->PLACE_AUTOCOMPLETE_REQUEST_CODE:I

    invoke-virtual {p0, v2, v3}, Lio/casper/android/activity/LocationPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v2

    .line 183
    const-string v3, "LocationPickerActivity"

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "Launching PlaceAutocomplete failed with Exception"

    aput-object v5, v4, v1

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    iget-object v2, p0, Lio/casper/android/activity/LocationPickerActivity;->mContext:Landroid/content/Context;

    const-string v3, "Failed to Launch Search"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 149
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0c015a -> :sswitch_2
        0x7f0c015b -> :sswitch_1
    .end sparse-switch
.end method
