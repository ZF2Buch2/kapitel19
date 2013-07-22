<?php
/**
 * ZF2 Buch Kapitel 19
 * 
 * Das Buch "Zend Framework 2 - Das Praxisbuch"
 * von Ralf Eggert ist im Galileo-Computing Verlag erschienen. 
 * ISBN 978-3-8362-2610-3
 * 
 * @package    Comment
 * @author     Ralf Eggert <r.eggert@travello.de>
 * @copyright  Alle Listings sind urheberrechtlich geschützt!
 * @link       http://www.zendframeworkbuch.de/ und http://www.galileocomputing.de/3460
 */

/**
 * namespace definition and usage
 */
namespace Comment\Controller;

use Zend\View\Model\ViewModel;
use Zend\Http\PhpEnvironment\Response;
use Zend\Mvc\Controller\AbstractActionController;
use Comment\Service\CommentServiceInterface;

/**
 * Comment controller
 * 
 * Handles the comment pages
 * 
 * @package    Comment
 */
class CommentController extends AbstractActionController
{
    /**
     * @var CommentServiceInterface
     */
    protected $commentService;
    
    /**
     * set the comment service
     * 
     * @param CommentServiceInterface
     */
    public function setCommentService(CommentServiceInterface $commentService)
    {
        $this->commentService = $commentService;

        return $this;
    }
    
    /**
     * Get the comment service
     * 
     * @return CommentServiceInterface
     */
    public function getCommentService()
    {
        return $this->commentService;
    }
    
    /**
     * Handle comment page
     */
    public function indexAction()
    {
        // Redirect to home page
        return $this->redirect()->toRoute('home');
    }
    
    /**
     * Handle add page
     */
    public function addAction()
    {
        // Redirect to home page
        return $this->redirect()->toRoute('home');
    }
}
