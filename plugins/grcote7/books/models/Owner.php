<?php namespace Grcote7\Books\Models;

use Model;

/**
 * Model
 */
class Owner extends Model
{
    use \October\Rain\Database\Traits\Validation;
    
    /*
     * Disable timestamps by default.
     * Remove this line if timestamps are defined in the database table.
     */
    public $timestamps = false;

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];

    /**
     * @var string The database table used by the model.
     */
    public $table = 'grcote7_books_owners';

    public function getFullNameAttribute() {
        return $this->firstname . ' ' . $this->lastname;
    }
}
