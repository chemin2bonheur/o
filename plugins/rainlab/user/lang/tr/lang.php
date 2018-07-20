<?php

return [
    'plugin' => [
        'name' => 'Üye',
        'description' => 'Ön-yüz üye yönetimi.',
        'tab' => 'Üyeler',
        'access_users' => 'Üyeleri Yönet',
        'access_groups' => 'Üye Gruplarını Yönet',
        'access_settings' => 'Üye Ayarlarını Yönet'
    ],
    'users' => [
        'menu_label' => 'Üyeler',
        'all_users' => 'Bütün Üyeler',
        'new_user' => 'Yeni Üye',
        'list_title' => 'Üyeleri Yönet',
        'trashed_hint_title' => 'Üye hesabını pasifleştirmiş',
        'trashed_hint_desc' => 'Üye hesabını pasifleştirmiş ve bu sitede görünmek istemiyor. Tekrar hesabına giriş yaparak hesabını istediği zaman aktifleştirebilir.',
        'banned_hint_title' => 'Üye engellendi.',
        'banned_hint_desc' => 'Üye bir yönetici tarafından engellendi ve giriş yapamayacak.',
        'guest_hint_title' => 'Bu üye ziyaretçi.',
        'guest_hint_desc' => 'Bu üye ziyaretçi olarak eklenmiş ve giriş yapabilmesi için kayıt olması gerekiyor.',
        'activate_warning_title' => 'Üye hesabı aktif edilmemiş!',
        'activate_warning_desc' => 'Bu üye hesabı aktif edilmedi ve oturum açamayacaktır.',
        'activate_confirm' => 'Bu üyeyi gerçekten aktif etmek istediğinize emin misiniz?',
        'activated_success' => 'Üye aktifleştirildi',
        'activate_manually' => 'Bu üyeyi aktif et',
        'convert_guest_confirm' => 'Ziyaretçiyi üyeye çevirmek istiyor musunuz?',
        'convert_guest_manually' => 'Kayıtlı üyeye çevir',
        'convert_guest_success' => 'Ziyaretçi, kayıtlı üyeye çevrildi.',
        'delete_confirm' => 'Bu üyeyi gerçekten silmek istediğinize emin misiniz?',
        'unban_user' => 'Üyenin engelini kaldır',
        'unban_confirm' => 'Bu üyenin engelini kaldırmak istediğinize emin misiniz?',
        'unbanned_success' => 'Üyenin engeli kaldırıldı',
        'return_to_list' => 'Üye listesine geri dön',
        'update_details' => 'Detayları değiştir',
        'bulk_actions' => 'Toplu işlemler',
        'delete_selected' => 'Seçileni sil',
        'delete_selected_confirm' => 'Seçili üyeleri sil?',
        'delete_selected_empty' => 'Silmek için seçili üye yok.',
        'delete_selected_success' => 'Seçili üyeler başarıyla silindi.',
        'deactivate_selected' => 'Seçileni pasifleştir',
        'deactivate_selected_confirm' => 'Seçilen üyeler pasifleştirilsin mi?',
        'deactivate_selected_empty' => 'Pasifleştirmek için üye seçmelisiniz.',
        'deactivate_selected_success' => 'Seçilen üyeler pasifleştirildi.',
        'restore_selected' => 'Seçileni aktifleştir',
        'restore_selected_confirm' => 'Seçilen üyeler aktifleştirilsin mi?',
        'restore_selected_empty' => 'Aktifleştirmek için üye seçmelisiniz.',
        'restore_selected_success' => 'Seçilen üyeler aktifleştirildi.',
        'ban_selected' => 'Seçileni engelle',
        'ban_selected_confirm' => 'Seçilen üyeler engellensin mi?',
        'ban_selected_empty' => 'Engellemek için üye seçmelisiniz.',
        'ban_selected_success' => 'Seçilen üyeler engellendi.',
        'unban_selected' => 'Seçilenin engelini kaldır',
        'unban_selected_confirm' => 'Seçilen üyelerin engeli kaldırılsın mi?',
        'unban_selected_empty' => 'Engeli kaldırmak için üye seçmelisiniz.',
        'unban_selected_success' => 'Seçilen üyelerin engeli kaldırıldı.',
    ],
    'settings' => [
        'users' => 'Üyeler',
        'menu_label' => 'Üye ayarları',
        'menu_description' => 'Üye bazlı ayarları yönetin.',
        'activation_tab' => 'Aktivasyon',
        'signin_tab' => 'Oturum Açma',
        'registration_tab' => 'Kayıt',
        'notifications_tab' => 'Bildirimler',
        'allow_registration' => 'Üye kaydını aktifleştir',
        'allow_registration_comment' => 'Eğer bu seçenek pasifleştirilirse sadece yöneticiler tarafından üye kaydı yapılabilecektir.',
        'activate_mode' => 'Aktivasyon Modu',
        'activate_mode_comment' => 'Üyenin nasıl aktif edileceğini seçin.',
        'activate_mode_auto' => 'Otomatik',
        'activate_mode_auto_comment' => 'Üye olduğu an aktif edilsin.',
        'activate_mode_user' => 'Üye',
        'activate_mode_user_comment' => 'Eposta adresini kullanarak aktif etsin.',
        'activate_mode_admin' => 'Yönetici',
        'activate_mode_admin_comment' => 'Sadece yöneticiler aktif edebilsin.',
        'require_activation' => 'Üye girişleri aktivasyon gerektirsin',
        'require_activation_comment' => 'Üyeler oturum açabilmek için aktif edilmiş bir hesaba sahip olmalıdırlar.',
        'use_throttle' => 'Boğma Girişimleri',
        'use_throttle_comment' => 'Tekrarlayan hatalı girişlerde kısa süreliğine üyeyi askıya al.',
        'login_attribute' => 'Oturum Açma Yöntemi',
        'login_attribute_comment' => 'Üye girişlerinde hangi üye detayının kullanılacağını seçin.',
    ],
    'user' => [
        'label' => 'User',
        'id' => 'ID',
        'username' => 'Üye Adı',
        'name' => 'Adı',
        'name_empty' => '-İsimsiz-',
        'surname' => 'Soyadı',
        'email' => 'Eposta',
        'created_at' => 'Kayıtlı',
        'last_seen' => 'Son görülme',
        'is_guest' => 'Ziyaretçi',
        'joined' => 'Katılım Tarihi',
        'is_online' => 'Şuan çevrimiçi',
        'is_offline' => 'Şuan çevrimdışı',
        'send_invite' => 'E-mail ile davet gönder',
        'send_invite_comment' => 'Giriş bilgilerinin bulunduğu bir e-mail gönder.',
        'create_password' => 'Şifre oluştur',
        'create_password_comment' => 'Giriş için bir şifre oluşturun.',
        'reset_password' => 'Şifre sıfırla',
        'reset_password_comment' => 'Bu üyenin parolasını sıfırlamak için buraya yenisini girin.',
        'confirm_password' => 'Parola tekrar',
        'confirm_password_comment' => 'Sıfırlamayı onaylamak için şifreyi tekrar girin.',
        'groups' => 'Gruplar',
        'empty_groups' => 'Gösterilecek grup yok.',
        'avatar' => 'Avatar',
        'details' => 'Detaylar',
        'account' => 'Hesap',
        'block_mail' => 'Bu üyenin mail göndermesini engelle.',
        'status_guest' => 'Ziyaretçi',
        'status_activated' => 'Aktif',
        'status_registered' => 'Kayıtlı',
    ],
    'group' => [
        'label' => 'Grup',
        'id' => 'No',
        'name' => 'İsim',
        'description_field' => 'Açıklama',
        'code' => 'Kod',
        'code_comment' => 'Bu grubu tanımlayan eşsiz bir kod girin.',
        'created_at' => 'Oluşturulma',
        'users_count' => 'Üyeler'
    ],
    'groups' => [
        'menu_label' => 'Gruplar',
        'all_groups' => 'Üye Grupları',
        'new_group' => 'Yeni Grup',
        'delete_selected_confirm' => 'Seçilen grupları silmek istediğinize emin misiniz?',
        'list_title' => 'Grupları Yönet',
        'delete_confirm' => 'Bu grubu silmek istediğinize emin misiniz?',
        'delete_selected_success' => 'Seçilen gruplar silindi.',
        'delete_selected_empty' => 'Silinecek grup seçmelisiniz.',
        'return_to_list' => 'Grup listesine dön',
        'return_to_users' => 'Üye listesine dön',
        'create_title' => 'Üye grubu oluştur',
        'update_title' => 'Üye grubunu düzenle',
        'preview_title' => 'Grubu önizle'
    ],
    'login' => [
        'attribute_email' => 'Eposta',
        'attribute_username' => 'Üye Adı'
    ],
    'account' => [
        'account' => 'Hesap',
        'account_desc' => 'Üye yönetimi formu.',
        'redirect_to' => 'Yönlendir',
        'redirect_to_desc' => 'Güncellemeden sonra yönlendirilecek sayfanın adı, oturum aç ya da kayıt ol.',
        'code_param' => 'Aktivasyon Kodu Parametresi',
        'code_param_desc' => 'Üyelik aktivasyon kodu için sayfanın URL parametresi kullanılır.',
        'invalid_user' => 'Girilen bilgilerle eşleşen bir üye yok.',
        'invalid_activation_code' => 'Geçersiz aktivasyon kodu',
        'invalid_deactivation_pass' => 'Girdiğiniz şifre geçersiz.',
        'success_activation' => 'Hesabınız başarıyla aktifleştirildi.',
        'success_deactivation' => 'Hesabınız pasifleştirildi. Aramıza tekrar bekleriz!',
        'success_saved' => 'Ayarlar başarıyla kaydedildi!',
        'login_first' => 'Önce oturum açmalısınız!',
        'already_active' => 'Hesabın zaten aktifleştirildi!',
        'activation_email_sent' => 'Tanımladığınız eposta adresine aktivasyon maili gönderildi.',
        'registration_disabled' => 'Üye kaydı geçici olarak durduruldu.',
        'sign_in' => 'Oturum Aç',
        'register' => 'Kayıt Ol',
        'full_name' => 'Tam İsim',
        'email' => 'Email',
        'password' => 'Parola',
        'login' => 'Oturum Aç',
        'new_password' => 'Yeni Parola',
        'new_password_confirm' => 'Yeni Şifre Onayla'
    ],
    'reset_password' => [
        'reset_password' => 'Parolanızı Sıfırlayın',
        'reset_password_desc' => 'Unutulan şifreyi sıfırlama formu.',
        'code_param' => 'Sıfırlama Kodu Parametresi',
        'code_param_desc' => 'Sıfırlama kodu için sayfanın URL parametresi kullanılır.'
    ],
    'session' => [
        'session' => 'Oturum',
        'session_desc' => 'Üye oturumlarını sayfaya ekler ve sayfaya erişimi kısıtlayın.',
        'security_title' => 'Görüntüleme İzni',
        'security_desc' => 'Bu sayfaya erişim izni olanlar.',
        'all' => 'Hepsi',
        'users' => 'Üyeler',
        'guests' => 'Misafirler',
        'redirect_title' => 'Yönlendir ',
        'redirect_desc' => 'Erişimi engelliyse yönlendirilecek sayfa.',
        'logout' => 'Başarıyla çıkış yaptınız!'
    ]
];
